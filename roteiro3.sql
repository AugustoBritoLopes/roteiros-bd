CREATE TYPE estado_nordeste AS ENUM ('AL', 'BA', 'CE', 'MA', 'PB', 'PE', 'PI', 'RN', 'SE');


CREATE TABLE farmacia.funcionarios(
    cpf CHAR(11),
    id_farmacia INTEGER,
    funcao CHAR(1),

    CONSTRAINT pk_funcionarios PRIMARY KEY(cpf),
    CONSTRAINT chk_funcao CHECK (funcao IN ('F', 'V', 'E', 'C', 'A'))
);

CREATE TABLE farmacia.farmacias(
    id INTEGER,
    tipo CHAR(1), -- F ou S
    bairro TEXT,
    cidade TEXT,
    estado estado_nordeste,
    cpf_gerente CHAR(11) UNIQUE,
    cargo_gerente CHAR(1),

    UNIQUE(bairro),
    CONSTRAINT pk_farmacia PRIMARY KEY(id),

    CONSTRAINT Chk_tipo CHECK (tipo IN ('F', 'S')),

    CONSTRAINT Chk_cargo_gerente CHECK (cargo_gerente IN ('A', 'F')), 
    
    CONSTRAINT unico_se_sede 
        EXCLUDE USING gist (tipo with =) WHERE (tipo = 'S'), 
    
    CONSTRAINT fk_CpfGerente FOREIGN KEY (cpf_gerente) REFERENCES farmacia.funcionarios(cpf)
);

CREATE TABLE farmacia.medicamentos(
    id INTEGER,
    nome CHAR(50),
    marca CHAR(50),
    receita BOOLEAN,
    valor INTEGER,

    CONSTRAINT pk_medicamentos PRIMARY KEY(id)
);

CREATE TABLE farmacia.clientes(
    cpf CHAR(11),
    data_de_nascimento DATE,
    endereco_trabalho TEXT,
    endereco_residencial TEXT,
    outro_endereco TEXT,

    CONSTRAINT pk_clientes PRIMARY KEY(cpf),

    CONSTRAINT chk_maior_de_idade CHECK (data_de_nascimento <= (CURRENT_DATE - INTERVAL '18 years'))
);

CREATE TABLE farmacia.vendas(
    id INTEGER,
    cpf_cliente CHAR(11),
    id_medicamento INTEGER,
    cpf_funcionario CHAR(11),
    cargo_funcionario CHAR(1),
    precisa_receita BOOLEAN,

    CONSTRAINT pk_vendas PRIMARY KEY(id),
    
   
    CONSTRAINT Chk_cargo_funcionario
        CHECK (cargo_funcionario IN ('V')),

    
    CONSTRAINT Chk_receita_cliente
        CHECK (NOT (cpf_cliente IS NULL AND precisa_receita = TRUE)),

    CONSTRAINT fk_funcionario FOREIGN KEY (cpf_funcionario) REFERENCES farmacia.funcionarios(cpf) ON DELETE RESTRICT,
    CONSTRAINT fk_medicamento FOREIGN KEY (id_medicamento) REFERENCES farmacia.medicamentos(id) ON DELETE RESTRICT,
    CONSTRAINT fk_cliente FOREIGN KEY (cpf_cliente) REFERENCES farmacia.clientes(cpf)
);

CREATE TABLE farmacia.entregas(
    id INTEGER,
    cpf_cliente CHAR(11) NOT NULL,

    CONSTRAINT pk_entregas PRIMARY KEY(id),
    CONSTRAINT fk_cliente FOREIGN KEY (cpf_cliente) REFERENCES farmacia.clientes(cpf)
);

ALTER TABLE farmacia.funcionarios 
ADD CONSTRAINT fk_farmacia 
FOREIGN KEY (id_farmacia) 
REFERENCES farmacia.farmacias(id); 