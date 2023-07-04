-- CREATE TYPE
DROP TYPE IF EXISTS genre;
CREATE TYPE user_role AS ENUM (
    'Manager',
    'Engineer',
    'HR',
    'Marketing',
);

-- CREATE TABLE
DROP TABLE IF EXISTS movies;
CREATE TABLE movies (
    id SERIAL PRIMARY KEY,
    name_first VARCHAR NOT NULL,
    name_last VARCHAR NOT NULL,
    email VARCHAR NOT NULL,
    birth_year SMALLINT,
    user_role user_role,
);