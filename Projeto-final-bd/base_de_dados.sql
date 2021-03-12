INSERT INTO registros.tb_cliente values ('Antonella', 'Gomes', 30, 'F', 'Rua Ataulfo Alves', 'Uberl�ndia', 38401-284, 3499516-7455, 1);
insert into registros.tb_carros values(1, 'Pe�as trocadas', 'Cinza', 20000, 2015, '2017-03-14', 5, '2.0', '35', 245);
insert into registros.tb_aluguel values(1, 1, '2017-02-14', '2017-02-21', 'B�sico',245, 421, 0, 2136);

insert into registros.tb_cliente values ('Luis', 'Pacheco', 32, 'M', 'Rua Ataulfo Alves', 'Uberl�ndia', 38401-284, 3499676-7422, 2);
insert into registros.tb_carros values(2, ' Sem pe�as trocadas', 'Preto', 15000, 2016, '2017-03-14', 5, '2.0', '35', 265);
insert into registros.tb_aluguel values(2, 2, '2017-02-14', '2017-02-21', 'B�sico',265, 421, 0, 2156);

insert into registros.tb_cliente values ('Carlos', 'Torres', 28, 'M', 'Rua Realengo', 'Uberl�ndia', 38411-080, 3492708-1197, 3);
insert into registros.tb_carros values(3, ' Sem pe�as trocadas', 'Vermelho', 18000, 2016, '2017-03-14', 5, '1.0', '35', 185);
insert into registros.tb_aluguel values(3, 3, '2017-02-14', '2017-02-21', 'Completo',185, 634, 0, 2289);
-----------------------------------------------------------------------------------
insert into 
	registros.tb_cliente (nome, sobrenome, idade, genero, endereco, cidade, cep, telefone_contato, id_cliente)
values
	('Stefany', 'Rezende', 68, 'F', 'Rua Realengo', 'Uberl�ndia', 38411-080, 3499789-1197, 4),
	('Elo�', 'de Jesus', 48, 'F', 'Rua Monte Castelo', 'Uberl�ndia', 38400-223, 3498243-3079, 5),
	('Gabriela', 'da Mata', 19, 'F', 'Rua Francisca Alves Rabelo', 'Uberl�ndia', 38408-528, 3499156-6165, 6),
	('Yuri', 'Souza', 60, 'M', 'Rua Real Grnadeza', 'Uberl�ndia', 38412-074, 3498684-9597, 7),
	('Vit�ria', 'da Costa', 67, 'F', 'Rua Alessandra Aparecida dos Santos', 'Uberl�ndia', 38410-457, 3499927-7959, 8),
	('S�nia', 'Oliveira', 32, 'F', 'Rua Pantanal', 'Uberl�ndia', 38410-659, 3499855-7760, 9),
	('Raul', 'Sales', 37, 'M', 'Rua Manoel Cec�lio Jorge', 'Uberl�ndia', 38411-764, 3499819-3229, 10),
	('Jennifer', 'Sales', 67, 'F', 'Alameda Jo�o Pereira de Carvalho', 'Uberl�ndia', 38412-864, 3499349-9280, 11),
	('Agatha', 'Monteiro', 23, 'F', 'Travessa Can�poilis', 'Uberl�ndia', 38400-380, 3499674-5353, 12), 
	('T�nia', 'Peixoto', 39, 'F', 'Rua Bari', 'Uberl�ndia', 38414-600, 3499671-1894, 13),
	('Fl�via', 'Almada', 24, 'F', 'Rua Gervazino Nunes Pinto', 'Uberl�ndia', 38401-178, 3499127-3079, 14),
	('Jo�o', 'Teixeira', 40, 'M', 'Rua Rivalino Pereira 846', 'Uberl�ndia', 38400-981, 3498355-6165, 15),
	('L�cia', 'de Paula', 60, 'F', 'Rua Cleusa Arli Alves', 'Uberl�ndia', 38405-377, 3499201-7980, 16),
	('Kamily', 'Rocha', 67, 'F', 'Rua Marselha', 'Uberl�ndia', 38410-273, 3499101-6474, 17),
	('Manuel', 'Melo', 57, 'M', 'Rua Juritis', 'Uberl�ndia', 38412-213, 3498725-5616, 18),
	('Vicente', 'Cardoso', 36, 'M', 'Rua Maria Borges Bielert', 'Uberl�ndia', 38415-216, 3499555-9272, 19),
	('Brenda', 'Drumond', 23, 'F', 'Rua Manoel Fernandes Silva', 'Uberl�ndia', 38408-766, 3498935-9122, 20);	
	
insert into
	registros.tb_carros (id_carro, condicao, cor, kilometragem, ano_de_fabricacao, dt_revisao, acentos, motor, "tanque(L)", diaria)
values
	(4, ' Sem pe�as trocadas', 'Preto', 18000, 2016, '2017-12-14', 5, '1.6', '35', 225),
	(5, 'Pe�as trocadas', 'Cinza', 22000, 2017, '2017-11-14', 5, '1.6', '35', 205),
	(6, ' Sem pe�as trocadas', 'Branco', 15000, 2017, '2017-08-14', 5, '2.0', '35', 265),
	(7, ' Sem pe�as trocadas', 'Prata', 18000, 2016, '2017-07-14', 5, '1.0', '35', 205),
	(8, 'Pe�as trocadas', 'Vermelho', 20000, 2016, '2017-12-14', 5, '1.6', '35', 225),
	(9, ' Sem pe�as trocadas', 'Bege', 16000, 2016, '2017-12-14', 5, '1.6', '35', 225),
	(10, ' Sem pe�as trocadas', 'Preto', 28000, 2015, '2017-11-14', 5, '1.0', '35', 185),
	(11, 'Pe�as trocadas', 'Preto', 12000, 2017, '2017-04-14', 5, '1.6', '35', 225),
	(12, ' Sem pe�as trocadas', 'Branco', 18000, 2016, '2017-11-14', 5, '1.6', '35', 245),
	(13, ' Sem pe�as trocadas', 'Preto', 18500, 2016, '2017-12-14', 5, '1.6', '35', 225),
	(14, 'Pe�as trocadas', 'Cinza', 22000, 2015, '2017-10-14', 5, '1.6', '35', 205),
	(15, ' Sem pe�as trocadas', 'Branco', 15000, 2017, '2017-07-14', 5, '2.0', '35', 265),
	(16, 'Pe�as trocadas', 'Branco', 20000, 2016, '2017-07-14', 5, '1.6', '35', 225),
	(17, 'Pe�as trocadas', 'Bege', 12000, 2016, '2017-09-14', 5, '1.6', '35', 225),
	(18, ' Sem pe�as trocadas', 'Cinza', 18000, 2016, '2017-11-14', 5, '2.0', '35', 225),
	(19, ' Sem pe�as trocadas', 'Azul', 19000, 2016, '2017-12-14', 5, '1.6', '35', 225),
	(20, ' Sem pe�as trocadas', 'Prata', 18000, 2016, '2017-12-14', 5, '1.6', '35', 225),
	(21, 'Pe�as trocadas', 'Cinza', 12000, 2017, '2017-11-14', 5, '1.6', '35', 205),
	(22, ' Sem pe�as trocadas', 'Branco', 15000, 2017, '2017-10-14', 5, '2.0', '35', 265),
	(23, 'Pe�as trocadas', 'Vermelho', 18000, 2016, '2017-12-14', 5, '1.6', '35', 225),
	(24, ' Sem pe�as trocadas', 'Azul', 28000, 2016, '2017-09-14', 5, '1.0', '35', 185),
	(25, ' Sem pe�as trocadas', 'Vermelho', 24000, 2015, '2017-12-14', 5, '1.6', '35', 225),
	(26, ' Sem pe�as trocadas', 'Cinza', 18000, 2016, '2017-12-14', 5, '1.0', '35', 185),
	(27, ' Sem pe�as trocadas', 'Prata', 11000, 2017, '2017-12-14', 5, '1.6', '35', 225);

insert into
	registros.tb_aluguel (id_carro, id_cliente, data_locacao, data_devolucao, tipo_seguro, valor_veiculo, valor_seguros, valor_add, valor_total)
values
	(4, 4, '2017-08-26', '2017-09-03', 'B�sico', 225, 421, 0, 1996),
	(5, 5, '2017-08-14', '2017-08-21', 'B�sico', 205, 421, 0, 1856),
	(6, 6, '2017-09-22', '2017-09-29', 'B�sico', 265, 421, 0, 2276),
	(7, 7, '2017-10-28', '2017-11-04', 'B�sico', 205, 421, 0, 1856),
	(9, 8, '2017-09-07', '2017-09-14', 'Completo', 225, 634, 0, 2209),
	(10, 9, '2017-11-07', '2017-12-14', 'Completo', 185, 634, 0, 1929),
	(11, 10, '2017-09-23', '2017-09-30', 'B�sico', 225, 421, 0, 1996),
	(12, 11, '2017-04-20', '2017-04-27', 'B�sico', 245, 421, 0, 2136),
	(22, 12, '2017-01-23', '2017-01-30', 'B�sico', 265, 421, 0, 2276),
	(13, 13, '2017-06-11', '2017-06-18', 'Completo', 225, 634, 0, 2209),
	(14, 14, '2017-06-27', '2017-07-04', 'B�sico', 205, 421, 0, 1856),
	(25, 15, '2017-08-10', '2017-08-17', 'B�sico', 225, 421, 0, 1996),
	(26, 16, '2017-01-24', '2017-01-31', 'Completo', 185, 634, 0, 1929),
	(17, 17, '2017-11-01', '2017-11-08', 'B�sico', 225, 421, 0, 1996),
	(8, 18, '2017-04-02', '2017-04-09', 'Completo', 225, 634, 0, 2209),
	(19, 19, '2017-05-19', '2017-05-26', 'Completo', 225, 634, 0, 2209),
	(21, 20, '2017-08-21', '2017-08-30', 'B�sico', 205, 421, 0, 2266);
