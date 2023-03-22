-- Criação das tabelas no Live SQl ou qualquer banco Oracle SQL
create table Turma(
Cod_turma integer,
Horario_aula integer,
N_aulas integer,
primary key (Cod_turma)
);
create table materia(
Cod_materia integer,
Nome_materia varchar(50),
primary key (Cod_materia)
);

create table Aluno(
Nome_aluno varchar(50),
Cod_aluno integer,
Cod_turma integer,
Email_responsavel varchar(100),
primary key (Cod_aluno),
foreign key (Cod_turma) references Turma(Cod_turma)
);
Create table Professores(
Nome_professor varchar(50),
Cod_professor integer,
Cod_materia integer,
Cod_Turma integer,
primary key (Cod_professor),
foreign key (Cod_materia) references materia (Cod_materia),
foreign key (cod_turma) references Turma(Cod_turma)
);
create table faltas(
Cod_aluno integer,
Cod_professor integer,
dia date,
foreign key (Cod_aluno) references Aluno (Cod_aluno),
foreign key (Cod_professor) references Professores (Cod_professor)
);


--Insercao e populacao das tabelas criadas anteriormente
insert into Turma (Cod_turma, Horario_aula,N_aulas) values (1,1000,100);
insert into Turma (Cod_turma, Horario_aula,N_aulas) values (2,1150,100);
insert into Aluno (Nome_aluno,Cod_aluno,Cod_Turma,Email_responsavel) values ('Joao',100,1,'Teste1@gmail.com');
insert into Aluno (Nome_aluno,Cod_aluno,Cod_Turma,Email_responsavel) values ('Lucas',101,2,'Teste2@gmail.com');
insert into Aluno (Nome_aluno,Cod_aluno,Cod_Turma,Email_responsavel) values ('Carlos',102,1,'Teste3@gmail.com');
insert into Aluno (Nome_aluno,Cod_aluno,Cod_Turma,Email_responsavel) values ('Gabriela',103,2,'Teste4@gmail.com');
insert into Aluno (Nome_aluno,Cod_aluno,Cod_Turma,Email_responsavel) values ('Carol',104,2,'Teste5@gmail.com');
insert into Aluno (Nome_aluno,Cod_aluno,Cod_Turma,Email_responsavel) values ('Mateus',105,1,'Teste6@gmail.com');
insert into Materia (Cod_materia,Nome_materia) values (1,'Geral');
insert into Materia (Cod_materia,Nome_materia) values (2,'Ingles');
insert into Materia (Cod_materia,Nome_materia) values (3,'EF');
Insert into Professores(Nome_professor,Cod_professor,Cod_materia,Cod_turma) values ('Nelson',100,1,1);
Insert into Professores(Nome_professor,Cod_professor,Cod_materia,Cod_turma) values ('Adriano',101,1,2);
Insert into Professores(Nome_professor,Cod_professor,Cod_materia) values ('Kazu',102,3);
Insert into Professores(Nome_professor,Cod_professor,Cod_materia) values ('Renato',103,2);
insert into Faltas(Cod_aluno,Cod_professor,dia) values(100,100,to_date('20/03/2023','dd/mm/yyyy'));
insert into Faltas(Cod_aluno,Cod_professor,dia) values(100,100,to_date('20/03/2023','dd/mm/yyyy'));
insert into Faltas(Cod_aluno,Cod_professor,dia) values(100,100,to_date('18/03/2023','dd/mm/yyyy'));
insert into Faltas(Cod_aluno,Cod_professor,dia) values(105,100,to_date('16/03/2023','dd/mm/yyyy'));
insert into Faltas(Cod_aluno,Cod_professor,dia) values(102,100,to_date('14/03/2023','dd/mm/yyyy'));
insert into Faltas(Cod_aluno,Cod_professor,dia) values(104,101,to_date('17/03/2023','dd/mm/yyyy'));
insert into Faltas(Cod_aluno,Cod_professor,dia) values(103,101,to_date('10/03/2023','dd/mm/yyyy'));
insert into Faltas(Cod_aluno,Cod_professor,dia) values(101,101,to_date('17/03/2023','dd/mm/yyyy'));
insert into Faltas(Cod_aluno,Cod_professor,dia) values(101,101,to_date('17/03/2023','dd/mm/yyyy'));
insert into Faltas(Cod_aluno,Cod_professor,dia) values(103,101,to_date('18/03/2023','dd/mm/yyyy'));
insert into Faltas(Cod_aluno,Cod_professor,dia) values(103,102,to_date('18/03/2023','dd/mm/yyyy'));
insert into Faltas(Cod_aluno,Cod_professor,dia) values(102,102,to_date('17/03/2023','dd/mm/yyyy'));
insert into Faltas(Cod_aluno,Cod_professor,dia) values(100,103,to_date('18/03/2023','dd/mm/yyyy'));
Insert into Faltas(Cod_aluno,Cod_professor,dia) values(103,103,to_date('18/03/2023','dd/mm/yyyy'));

--Select necessarios

-- Seleciona as faltas de um aluno especifico atraves de seu codigo
select A.nome_aluno,A.email_responsavel,A.Cod_Turma,F.dia
from Faltas F,Aluno A
where (A.Cod_aluno = 100) and (A.Cod_aluno = F.Cod_aluno);

-- retorna todas as faltas com os nomes dos alunos, email do responsavel e codigo da turma 
select A.nome_aluno,A.email_responsavel,A.Cod_Turma,F.dia
from Faltas F left join Aluno A
on A.Cod_aluno = F.Cod_aluno

--seleciona as faltas de um dia especifico
select A.nome_aluno,A.email_responsavel,A.Cod_Turma,F.dia
from Faltas F left join Aluno A
on A.Cod_aluno = F.Cod_aluno
where (to_date('17/03/2023','dd/mm/yyyy') = F.dia);

-- Seleciona as faltas de um aluno especifico atraves de seu nome
select A.nome_aluno,A.email_responsavel,A.Cod_Turma,F.dia
from Faltas F left join Aluno A
on A.Cod_aluno = F.Cod_aluno
where ('Carol' = A.Nome_aluno);

--Seleciona as faltas por professor atraves de seu codigo
select A.nome_aluno,A.email_responsavel,A.Cod_Turma,F.dia
From Faltas F left join Aluno A
on A.Cod_aluno = F.Cod_aluno left join Professores P
on P.Cod_Professor = F.Cod_Professor
where (102 = P.Cod_Professor);

--Seleciona as faltas por professor atraves de seu Nome
select A.nome_aluno,A.email_responsavel,A.Cod_Turma,F.dia
From Faltas F left join Aluno A
on A.Cod_aluno = F.Cod_aluno left join Professores P
on P.Cod_Professor = F.Cod_Professor Left join Professores P1
on P1.Nome_professor = P.Nome_professor
where ('Kazu' = P1.Nome_professor);

--Seleciona as faltas por disciplina atraves de seu codigo
select M.Nome_materia,A.nome_aluno,A.email_responsavel,A.Cod_Turma,F.dia
From Faltas F left join Aluno A
on A.Cod_aluno = F.Cod_aluno left join Professores P
on P.Cod_Professor = F.Cod_Professor left join Materia M
on M.Cod_materia = P.Cod_materia
where (3 = M.Cod_materia);

--Seleciona as faltas por disciplina atraves de seu Nome
select M.Nome_materia,A.nome_aluno,A.email_responsavel,A.Cod_Turma,F.dia
From Faltas F left join Aluno A
on A.Cod_aluno = F.Cod_aluno left join Professores P
on P.Cod_Professor = F.Cod_Professor left join Materia M
on M.Cod_materia = P.Cod_materia left join Materia M1
on M1.Nome_materia = M.Nome_Materia
where('EF' = M1.Nome_materia);

--Seleciona as faltas por Turma atraves de seu Codigo
select A.nome_aluno,A.email_responsavel,A.Cod_Turma,F.dia
From Faltas F left join Aluno A
on A.Cod_aluno = F.Cod_aluno left join Turma T
on T.Cod_turma = A.Cod_Turma
where(2 = T.Cod_Turma);

--Seleciona as faltas por Turma atraves de seu horario
select A.nome_aluno,A.email_responsavel,A.Cod_Turma,F.dia
From Faltas F left join Aluno A
on A.Cod_aluno = F.Cod_aluno left join Turma T
on T.Cod_turma = A.Cod_Turma left join Turma T1
on T1.Horario_aula = T.Horario_aula
where(1150 = T1.Horario_aula);

--Mostra o numero de faltas de um aluno a partir de seu nome
select count(A.Cod_aluno)
from Faltas F left join Aluno A
on A.Cod_aluno = F.Cod_aluno
where ('Carol' = A.Nome_aluno);

--Seleciona todas as faltas entre datas especificadas
select A.nome_aluno,A.email_responsavel,A.Cod_Turma,F.dia
from Faltas F right join Aluno A
on A.Cod_aluno = F.Cod_aluno
where F.dia between to_date('10/03/2023','dd/mm/yyyy') and to_date('22/03/2023','dd/mm/yyyy');

--Seleciona todas as faltas de aluno contadas entre uma data especifica
select count(F.cod_aluno),A.Nome_aluno
from Faltas F left join Aluno A
on A.Cod_aluno = F.Cod_aluno
where F.dia between to_date('10/03/2023','dd/mm/yyyy') and to_date('22/03/2023','dd/mm/yyyy')
group by A.nome_aluno;

--Seleciona todas as faltas de aluno contadas
select count(F.cod_aluno),A.Nome_aluno
from Faltas F left join Aluno A
on A.Cod_aluno = F.Cod_aluno
group by A.nome_aluno;



