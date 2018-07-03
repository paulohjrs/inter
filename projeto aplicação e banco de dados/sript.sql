create database trabalhopaulo;
use trabalhopaulo;
create table disciplina(
	coddisciplina int auto_increment not null,
    nome varchar(20),
    primary key(coddisciplina)
);

insert into disciplina(coddisciplina,nome) values(1,'teste1');
insert into disciplina(coddisciplina,nome) values(2,'teste2');
insert into disciplina(coddisciplina,nome) values(3,'teste3');

create table professor(
	codprofessor int auto_increment not null,
    nome varchar(50),
    idade int,
    rg varchar(50),
    disciplina int,
    primary key (codprofessor),
    constraint professorcomdisciplina foreign key(disciplina)
    references disciplina(coddisciplina)
    on update cascade
);

insert into professor(codprofessor,nome,idade,rg,disciplina) values(1,'rubens',30,'33444333',1);
insert into professor(codprofessor,nome,idade,rg,disciplina) values(2,'rub',35,'33444333',2);
insert into professor(codprofessor,nome,idade,rg,disciplina) values(3,'bens',44,'33444333',3);

