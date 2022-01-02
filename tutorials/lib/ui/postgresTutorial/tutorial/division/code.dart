String divFunction = '''
create or replace function divide(_tblA regclass,_tblB regclass) returns table(result varchar) as
\$\$
declare
	counterA int := 1;
	counterMaxA int;
	counterB int := 1;
	counterMaxB int;
	varWhere varchar := '';
	varSelect varchar := '';
	rec record;
	varDivide varchar := '';
begin
	drop table if exists div ;
	execute
	'create temp table A as(	
	select * from
	(
		SELECT column_name 
		FROM information_schema.columns 
		WHERE table_name = \$2
	) as A
	intersect
	(
		SELECT column_name 
		FROM information_schema.columns 
		WHERE table_name = \$1
	) 
	);' using _tblA::varchar, _tblB::varchar;
	Execute
	'create temp table B as(	
	select * from
	(
		SELECT column_name 
		FROM information_schema.columns 
		WHERE table_name = \$1
	) as A
	EXCEPT
	(
		SELECT column_name 
		FROM information_schema.columns 
		WHERE table_name = \$2
	) 
	);' using _tblA::varchar, _tblB::varchar;
	
	counterMaxA := (select count(*)::int from A);
	for rec in select * from A loop
		varWhere := concat(varWhere,_tblA::varchar,'.',rec.column_name,'=',_tblB::varchar,'.',rec.column_name);
		if counterA < counterMaxA then
			varWhere := concat(varWhere,' and ');
		end if;
		counterA := counterA + 1;
	end loop;
	
	counterMaxB := (select count(*)::int from B);
	for rec in select * from B loop
		varSelect := concat(varSelect,_tblA::varchar,'.',rec.column_name);
		if counterB < counterMaxB then
			varSelect := concat(varSelect,' , ');
		end if;
		counterB := counterB + 1;
	end loop;
	varDivide := concat('select ',varSelect,' from ',_tblA::varchar, ' , ', _tblB::varchar,' where ',varWhere,' group by ',
					  varSelect, ' having count(*)= (select count(*) from ', _tblB::varchar,')');
	execute format('create temp table DIV as (%s)', varDivide);
	execute 'drop table A;';
	execute 'drop table B;';
end
\$\$
language plpgsql;
''';

String divisionOneLine = '''
select A.1 from A, B where A.2 = B.2 group by A.1 having count(*)= (select count(*) from B);
''';
