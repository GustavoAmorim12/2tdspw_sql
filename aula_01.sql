CREATE TABLE PAIS (
    ID_PAIS NUMBER,
    NOME_PAIS VARCHAR2 (30)
);

ALTER TAVBLE PAIS ADD PRIMARY KEY (IS_PAIS);

CREATE TABLE ESTADO (
    ID_ESTADO NUMBER,
    NOME_ESTADO VARCHAR2(30),
    ID_PAIS NUMBER
);

ALTER TABLE ESTADO ADD PRIMARY KEY (ID_ESTADO)

ALTER TABLE ESTADO ADD CONSTRAINT FK_ESTADO FOREIGN KEY (ID_PAIS) REFERENCES PAIS (ID_PAIS);

CREATE TABLE CIDADE (
    ID_CIDADE NUMBER,
    NOME_CIDADE VARCHAR2(30),
    ID_ESTADO NUMBER
);

ALTER TABLE CIDADE ADD PRIMARY KEY (ID_CIDADE)

ALTER TABLE CIDADE ADD CONSTRAINT FK_CIDADE FOREIGN KEY (ID_ESTADO) REFERENCES PAIS (ID_ESTADO);

CREATE TABLE BAIRRO (
    ID_BAIRRO NUMBER,
    NOME_BAIRRO VARCHAR2(30),
    ID_CIDADE NUMBER
);

ALTER TABLE BAIRRO ADD PRIMARY KEY (ID_BAIRRO)

ALTER TABLE BAIRRO ADD CONSTRAINT FK_BAIRRO FOREIGN KEY (ID_BAIRRO) REFERENCES PAIS (ID_CIDADE);

CREATE TABLE ENDERECO_CLIENTE (
ID_ENDERECO NUMBER,
CEP NUMBER,
LOGRADOURO VARCHAR2 (50),
NUMERO NUMBER,
REFERENCIA VARCHAR2 (50),
ID_BAIRRO NUMBER
));

ALTER TABLE ENDERECO_CLIENTE ADD PRIMARY KEY (ID_ENDERECO)

ALTER TABLE ENDERECO_CLIENTE
    ADD CONSTRAINT FK_BAIRRO FOREIGN KEY (ID_BAIRRO)
        REFERENCES ENDERECO_CLIENTE (ID_BAIRRO);
















