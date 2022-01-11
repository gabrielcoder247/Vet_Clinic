/* Database schema to keep the structure of entire database. */


CREATE TABLE animals (
    id SERIAL PRIMARY KEY,
	name text,
	date_of_birth date,
	escape_attempts integer,
	neutered boolean,
	weight_kg decimal
    specie varchar
);


CREATE TABLE owners (
    id SERIAL PRIMARY KEY,
    full_name varchar(100),
    age int
);


CREATE TABLE species (
	id SERIAL PRIMARY KEY,
	name varchar(100)
);


CREATE TABLE vets (
    id SERIAL NOT NULL PRIMARY KEY,
    name varchar(100),
    age int,
    date_of_graduation date
);


CREATE TABLE specializations (
    vet_id int NOT NULL,
    species_id int NOT NULL,
    CONSTRAINT fk_species FOREIGN KEY(species_id) REFERENCES species(id),
    CONSTRAINT fk_vets FOREIGN KEY(vet_id) REFERENCES vets(id)
);

CREATE TABLE visits (
    animal_id int,
    vet_id int,
    date_of_visit date,
    CONSTRAINT fk_vets FOREIGN KEY(vet_id) REFERENCES vets(id),
    CONSTRAINT fk_animals FOREIGN KEY(animal_id) REFERENCES animals(id)
);

/* MODIFY animals table*/

ALTER TABLE animals
DROP COLUMN specie;


ALTER TABLE animals
    ADD species_id INT,
    ADD CONSTRAINT species_id FOREIGN KEY(species_id) REFERENCES species(id);

ALTER TABLE animals
    ADD owners_id INT,
    ADD CONSTRAINT owners_id FOREIGN KEY(owners_id) REFERENCES owners(id);



    -- Optimized Execution analysis by creating Indexes
CREATE INDEX animal_id_asc ON visits (animal_id ASC);
CREATE INDEX vet_id_asc ON visits (vet_id ASC);
CREATE INDEX date_of_visit_asc ON visits (date_of_visit ASC);
CREATE INDEX full_name_asc ON owners (full_name ASC);
CREATE INDEX owners_age_asc ON owners (age ASC);
CREATE INDEX emails_asc ON owners (email ASC);

DROP INDEX date_of_visit_asc;