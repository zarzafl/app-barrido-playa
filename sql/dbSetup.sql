-- Tabla de auditores
CREATE TABLE auditores (
  dni VARCHAR PRIMARY KEY
);

-- Tabla de plantas
CREATE TABLE plantas (
  id SERIAL PRIMARY KEY,
  nombre VARCHAR NOT NULL,
  ubicacion VARCHAR NOT NULL,
  provincia VARCHAR NOT NULL
);

-- Tabla de registros
CREATE TABLE registros (
  id SERIAL PRIMARY KEY,
  tipo_envio VARCHAR NOT NULL,
  nro_serie VARCHAR,
  foto_url TEXT NOT NULL,
  fecha TIMESTAMP DEFAULT NOW(),
  dni_auditor VARCHAR REFERENCES auditores(dni),
  planta_id INTEGER REFERENCES plantas(id)
);