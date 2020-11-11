delimiter $$
create function idade(data_nasc int) returns int 
	begin
		declare data_nasc int;
		set data_nasc = (select extract(year from dataNasc) from funcionario);
		return data_nasc;
	end //
delimiter $;

select idade(dataNasc) from funcionario;
