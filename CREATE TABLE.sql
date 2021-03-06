CREATE TABLE FUNCIONARIO (
ID NUMBER(4) PRIMARY KEY,
NOME VARCHAR2 (120) NOT NULL,
SALARIO NUMBER (10,2) NOT NULL,
ATIVO CHAR (1) NOT NULL,
CONSTRAINT ck_ativosfuncionarios check (Ativo in ('S','s','N','n'))
);

CREATE TABLE FOLHA_PGTO (
ID_FOLHA NUMBER (4) PRIMARY KEY,
MESANO NUMBER NOT NULL,
DATAHORAGERACAO DATE
);

CREATE SEQUENCE SEQ_FOLHA
 start with     1
 increment by   1
 nocache
 nocycle;

CREATE TABLE FOLHA_PGTO_ITEM(
ID_FOLHA NUMBER (4) NOT NULL,
ID NUMBER (4) NOT NULL,
SALARIO NUMBER(10,2) NOT NULL,
INSS NUMBER (10,2) NOT NULL,
SALARIOLIQUIDO NUMBER (10,2) NOT NULL,
CONSTRAINT PK_FUNC_FOLHA PRIMARY KEY(ID_FOLHA, ID),
CONSTRAINT FK_FOLHA_PGTO FOREIGN KEY (ID_FOLHA) REFERENCES FOLHA_PGTO (ID_FOLHA),
CONSTRAINT FK_FUNCIONARIO FOREIGN KEY (ID) REFERENCES FUNCIONARIO (ID)
);