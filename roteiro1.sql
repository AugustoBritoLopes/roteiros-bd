
-- criação de tabelas, etapas 2, 7 e 8

CREATE TABLE automovel (
    placa CHAR(7) NOT NULL, -- placa do carro tem no maximo 7 caracteres de acordo com o detran
    modelo VARCHAR(40), -- modelo do carro tem no maximo 40 caracteres
    cor VARCHAR(10), 
    ano SMALLINT, -- aceita 2 bytes
    marca VARCHAR(40),
    renavam CHAR(11),

    -- etapa 3
    CONSTRAINT pk_automovel PRIMARY KEY(placa) -- definição de placa como chave de identificação única de automóvel
);

CREATE TABLE segurado(
    cpf CHAR(11) NOT NULL,
    nome VARCHAR(40) NOT NULL,
    telefone CHAR(11),
    idade INTEGER,

    -- etapa 3
    CONSTRAINT pk_segurado PRIMARY KEY(cpf) -- definição de cpf como chave de identificação única do segurado
);

CREATE TABLE seguro ( 
    id SERIAL NOT NULL, 
    placa_automovel CHAR(7) NOT NULL, --placa do carro contratante do seguro
    cpf_segurado CHAR(11) NOT NULL, --cpf do segurado contratante do seguro
    validade DATE,
    preco NUMERIC,
    tipo_cobertura VARCHAR(50),

    -- etapa 3
    CONSTRAINT pk_seguro PRIMARY KEY(id), -- definição do id como chave de identifcação única do seguro 

    -- etapa 4
    CONSTRAINT seguro_placaAutomovel_fkey FOREIGN KEY(placa_automovel) REFERENCES automovel(placa), -- o seguro é feito em um automovel, por isso são dependentes
    CONSTRAINT seguro_cpfSegurado_fkey FOREIGN KEY(cpf_segurado) REFERENCES segurado(cpf) -- todo seguro depende de um segurado, que é quem contrata o serviço da seguradora
);

CREATE TABLE perito (
    cpf CHAR(11) NOT NULL,
    nome VARCHAR(40) NOT NULL,
    telefone CHAR(11),
    idade INTEGER,
    data_contrato DATE NOT NULL,
    salario NUMERIC,

    -- etapa 3
    CONSTRAINT pk_perito PRIMARY KEY(cpf) -- definição de cpf como chave de identicação única de perito
);

CREATE TABLE sinistro (
    id SERIAL NOT NULL,
    local_da_ocorrencia TEXT,
    gravidade TEXT,
    causa TEXT,
    placa_automovel CHAR(7) NOT NULL, --placa do automovel que participou do sinistro
    data_ocorrencia DATE,

    -- etapa 3
    CONSTRAINT pk_sinistro PRIMARY KEY(id), -- definição do id como chave de identificação única de sinistro

    -- etapa 4
    CONSTRAINT sinistro_placaAutomovel_fkey FOREIGN KEY(placa_automovel) REFERENCES automovel(placa) -- um sinistro ocorre com um automovel específico, nesse caso o cadastrado na seguradora
);

CREATE TABLE oficina (
    cnpj CHAR(14) NOT NULL,
    telefone CHAR(11),
    nome VARCHAR(50),

    -- etapa 3
    CONSTRAINT pk_oficina PRIMARY KEY(cnpj) -- definição de cnpj como chave de identificação única de oficina
);

CREATE TABLE pericia (
    id SERIAL NOT NULL,
    cpf_perito CHAR(11) NOT NULL,
    id_sinistro INTEGER NOT NULL,
    cnpj_oficina CHAR(14) NOT NULL,
    data_pericia DATE,

    -- etapa 3
    CONSTRAINT pk_pericia PRIMARY KEY(id), -- definição do id como chave de identificação única de pericia

    -- etapa 4
    CONSTRAINT pericia_cpfPerito_fkey FOREIGN KEY(cpf_perito) REFERENCES perito(cpf), -- a pericia depende de um perito que é quem realiza a própria
    CONSTRAINT pericia_idSinistro_fkey FOREIGN KEY(id_sinistro) REFERENCES sinistro(id),  -- a pericia é feita a partir de um sinistro, por isso depende de um
    CONSTRAINT pericia_cnpjOficina_fkey FOREIGN KEY(cnpj_oficina) REFERENCES oficina(cnpj) -- toda pericia é encaminhada para uma oficina, por esse motivo estão relacionados
);

CREATE TABLE reparo (
    id SERIAL NOT NULL,
    cnpj_oficina CHAR(14) NOT NULL,
    valor NUMERIC,
    id_pericia INTEGER NOT NULL,
    
    -- etapa 3
    CONSTRAINT pk_reparo PRIMARY KEY(id), -- chave única de reparo sendo definida como o id do próprio

    -- etapa 4
    CONSTRAINT reparo_cnpjOficina_fkey FOREIGN KEY(cnpj_oficina) REFERENCES oficina(cnpj) -- todo reparo é feito por uma oficina, por isso é adequeado uma relação entre os dois 
    CONSTRAINT reparo_idPericia_fkey FOREIGN KEY(id_pericia) REFERENCES pericia(id) -- todo reparo depende de uma pericia que autorizou o mesmo
);

--etapa 6 e 9
-- apagando as tabelas "filhas" que possuem FOREIGN KEYS
DROP TABLE reparo; -- depende de oficina, pericia
DROP TABLE pericia; -- depende de perito, sinistro, oficina
DROP TABLE seguro; -- depende de automovel, segurado
DROP TABLE sinistro; -- depende de automovel

-- apagando as tabelas "pai" que agora estão livres
DROP TABLE oficina; -- independente 
DROP TABLE perito; -- independente
DROP TABLE automovel; -- independente
DROP TABLE segurado; -- independente
