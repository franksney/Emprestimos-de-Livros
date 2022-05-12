create database Emprestimo_Livros


create table USUARIO(
ID_USUARIO int not null primary key identity (1,1),
NOME_USUARIO varchar(50),
ENDERECO varchar(50),
TELEFONE varchar(50),
EMAIL varchar(50)
)


create table EMPRESTIMO(
ID_EMPRESTIMO int not null primary key identity (1,1),
FK_USUARIO_COD_USUSARIO int,
DATA_HORA datetime,
DEVOLUCAO varchar(50)
)


create table LIVRO_MOVIMETACAO(
ID_EMPRESTIMO INT,
ID_LIVRO INT
)


create table SESSAO(
ID_SESSAO INT not null primary key identity (1,1),
LOCALIZACAO VARCHAR (50),
DESCRICAO VARCHAR (60)
)


create table LIVRO(
ID_LIVRO INT not null primary key identity (1,1),
FK_SESSAO_COD_SESSAO INT,
TITULO VARCHAR (60),
NMAUTOR VARCHAR (60)
)

SELECT * FROM LIVRO
SELECT * FROM SESSAO
SELECT * FROM USUARIO
SELECT * FROM LIVRO_MOVIMETACAO
SELECT * FROM EMPRESTIMO


SELECT * FROM LIVRO, SESSAO, USUARIO, LIVRO_MOVIMETACAO, EMPRESTIMO


insert into SESSAO(LOCALIZACAO,DESCRICAO)
values ('PRATELERIA_01','DRAMA')

UPDATE LIVRO SET FK_SESSAO_COD_SESSAO= '4' WHERE ID_LIVRO = '4'


alter table EMPRESTIMO
add constraint FK_USUARIO_EMPRESTIMO
foreign key (CODUSUARIO) references USUARIO(ID_USUARIO)

EXEC SP_RENAME 'DBO.EMPRESTIMO.FK_USUARIO_COD_USUSARIO','CODUSUARIO','COLUMN';

