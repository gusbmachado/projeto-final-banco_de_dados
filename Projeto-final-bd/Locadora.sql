create database locadora;

create schema registros;

CREATE TABLE registros.tb_cliente (
	nome	varchar(25) NOT NULL,
	sobrenome	varchar(25) NOT NULL,
	idade	integer NOT NULL,
	genero	char(1) NOT NULL,
	endereco	varchar(200) NOT NULL,
	cidade	 varchar(10) NOT NULL,
	cep	integer NOT NULL,
	telefone_contato	integer NOT NULL,
	id_cliente	integer NOT NULL,
	CONSTRAINT tb_cliente_pk PRIMARY KEY (id_cliente)
);

CREATE TABLE registros.tb_carros (
	id_carro integer NOT NULL,
	condicao varchar(25) NOT NULL,
	cor varchar(10) NOT NULL,
	kilometragem float8 NOT NULL,
	ano_de_fabricacao integer NOT NULL,
	dt_revisao date NOT NULL,
	acentos varchar(10) NOT NULL,
	motor varchar(10) NOT NULL,
	"tanque(L)" varchar NOT NULL,
	diaria float4 NOT NULL,
	CONSTRAINT tb_carros_pk PRIMARY KEY (id_carro) 
);

CREATE TABLE registros.tb_aluguel (
	id_carro integer NOT NULL,
	id_cliente integer NULL,
	data_locacao date NOT NULL,
	data_devolucao date NOT NULL,
	tipo_seguro varchar(25) NOT NULL,
	valor_veiculo float4 NOT NULL,
	valor_seguros float4 NOT NULL,
	valor_add float4 NOT NULL,
	valor_total float4 NOT NULL,
	CONSTRAINT tb_aluguel_fk   FOREIGN KEY (id_carro)   REFERENCES registros.tb_carros(id_carro),
	CONSTRAINT tb_aluguel_fk_1 FOREIGN KEY (id_cliente) REFERENCES registros.tb_cliente(id_cliente)
);