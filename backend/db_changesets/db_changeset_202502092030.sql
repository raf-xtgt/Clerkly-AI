--changeset:Rafaquat202502092036
CREATE TABLE cl_users (
    guid VARCHAR2(36) PRIMARY KEY,
    email VARCHAR2(255) UNIQUE NOT NULL,
    password_hash VARCHAR2(255) NOT NULL,
    created_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_date TIMESTAMP,
    status VARCHAR2(255)
);

CREATE INDEX idx_cl_user_email ON cl_users (email);