create TRIGGER dia
	after update of data_devolucao on tb_aluguel
    for row
    execute procedure add_diaria();

create or replace function add_diaria()
returns trigger as $$
DECLARE
    diaria_veiculo float4;
   	ajuste integer;
   	idc int4;
begin
	ajuste := new.data_devolucao - old.data_devolucao;
	idc := (SELECT id_carro from registros.tb_aluguel WHERE data_devolucao = new.data_devolucao or data_devolucao = old.data_devolucao);
	diaria_veiculo := (select rta.valor_veiculo from registros.tb_aluguel as rta where rta.id_carro = idc);
	update tb_aluguel as ta SET valor_add = ta.valor_add + (diaria_veiculo * ajuste) from tb_aluguel where ta.id_carro = idc;
	update tb_aluguel as ta SET valor_total = ta.valor_total + (diaria_veiculo * ajuste) from tb_aluguel where ta.id_carro = idc;
	return NULL;
end
$$ language plpgsql;

create TRIGGER dia2
	after update of data_locacao on tb_aluguel
    for row
    execute procedure add_diaria2();

create or replace function add_diaria2()
returns trigger as $$
DECLARE
    diaria_veiculo float4;
   	ajuste integer;
   	idc int4;
begin
	ajuste := new.data_locacao - old.data_locacao;
	idc := (SELECT id_carro from registros.tb_aluguel WHERE data_locacao = new.data_locacao or data_locacao = old.data_locacao);
	diaria_veiculo := (select rta.valor_veiculo from registros.tb_aluguel as rta where rta.id_carro = idc);
	update tb_aluguel as ta SET valor_add = ta.valor_add - (diaria_veiculo * ajuste) from tb_aluguel where ta.id_carro = idc;
	update tb_aluguel as ta SET valor_total = ta.valor_total - (diaria_veiculo * ajuste) from tb_aluguel where ta.id_carro = idc;
	return NULL;
end
$$ language plpgsql;

/*
create TRIGGER vadd
	after update of valor_add on tb_aluguel
    for row
    execute procedure vadd();

create or replace function vadd()
returns trigger as $$
DECLARE
   	idc int4;
begin
	idc := (SELECT id_carro from registros.tb_aluguel WHERE valor_add = new.valor_add or valor_add = old.valor_add);
	update tb_aluguel as ta SET valor_total = ta.valor_total + new.valor_add from tb_aluguel where ta.id_carro = idc;
	return NULL;
end
$$ language plpgsql;
*/

CREATE or replace VIEW Ganhos as
	select SUM(valor_total) AS "Ganhos Totais",
	DATE_TRUNC('month', data_locacao) AS  "Mês"
	FROM registros.tb_aluguel
	GROUP BY DATE_TRUNC('month', data_locacao);
	
create or replace VIEW Seguros as
	select 
		tipo_seguro,
		COUNT(id_carro) as "Quantidade"
	from registros.tb_aluguel
	group by tipo_seguro;
	
CREATE VIEW Locacoes as
SELECT
       DATE_TRUNC('month', data_locacao)
         AS  locacoes_do_mes,
       COUNT(id_carro) AS locacoes
FROM registros.tb_aluguel
GROUP BY DATE_TRUNC('month', data_locacao);
	
create OR REPLACE VIEW Avariados as
	select id_carro,
	       kilometragem,
	       ano_de_fabricacao,
	       dt_revisao,
		CASE WHEN condicao = ' Sem peças trocadas' THEN 'Não Avariado'
			 WHEN condicao = 'Peças trocadas' THEN 'Avariado'
		END
	from tb_carros;