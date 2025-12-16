CREATE TABLE locations
(
    id        SERIAL PRIMARY KEY,
    name      VARCHAR(255) NOT NULL,
    level     INT          NOT NULL,
    parent_id INT,

    CONSTRAINT fk_location_parent
        FOREIGN KEY (parent_id)
            REFERENCES locations (id)
            ON DELETE SET NULL
);

CREATE TABLE authorities
(
    id          SERIAL PRIMARY KEY,
    name        VARCHAR(255) NOT NULL,
    level       INT          NOT NULL,
    location_id INT          NOT NULL,

    CONSTRAINT fk_authority_location
        FOREIGN KEY (location_id)
            REFERENCES locations (id)
            ON DELETE RESTRICT
);

--
CREATE TABLE procedures
(
    id          SERIAL PRIMARY KEY,
    name        VARCHAR(255) NOT NULL,
    description TEXT,
    category    INT          NOT NULL,
    nationwide  BOOLEAN   DEFAULT FALSE,
    created_at  TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE procedure_steps
(
    id           SERIAL PRIMARY KEY,
    procedure_id INT          NOT NULL,
    step_order   INT          NOT NULL,
    title        VARCHAR(255) NOT NULL,
    description  TEXT,
    authority_id INT          NOT NULL,

    CONSTRAINT fk_step_procedure
        FOREIGN KEY (procedure_id)
            REFERENCES procedures (id)
            ON DELETE CASCADE,

    CONSTRAINT fk_step_authority
        FOREIGN KEY (authority_id)
            REFERENCES authorities (id)
            ON DELETE RESTRICT,

    CONSTRAINT uq_procedure_step
        UNIQUE (procedure_id, step_order)
);

CREATE TABLE documents
(
    id          SERIAL PRIMARY KEY,
    name        VARCHAR(255) NOT NULL,
    description TEXT
);

CREATE TABLE procedure_documents
(
    procedure_id INT NOT NULL,
    document_id  INT NOT NULL,
    required     BOOLEAN DEFAULT TRUE,
    prepared_by  INT NOT NULL,

    PRIMARY KEY (procedure_id, document_id),

    CONSTRAINT fk_pd_procedure
        FOREIGN KEY (procedure_id)
            REFERENCES procedures (id)
            ON DELETE CASCADE,

    CONSTRAINT fk_pd_document
        FOREIGN KEY (document_id)
            REFERENCES documents (id)
            ON DELETE CASCADE
);





