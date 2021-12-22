/* Database schema to keep the structure of entire database. */


CREATE TABLE animals (
    id integer PRIMARY KEY,
	name text,
	date_of_birth date,
	escape_attempts integer,
	neutered boolean,
	weight_kg decimal
    specie varchar
);

