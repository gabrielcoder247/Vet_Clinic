BEGIN;
UPDATE animals
SET specie = 'unspecified';
ROLLBACK;

BEGIN;
UPDATE animals
SET specie = 'digimon'
WHERE name LIKE '%mon';
UPDATE animals
SET specie = 'pokemon'
WHERE specie is NULL;
COMMIT;

BEGIN;
DELETE FROM animals;
ROLLBACK;


BEGIN;
DELETE FROM animals
WHERE date_of_birth > '2022-01-01';
SAVEPOINT delete_by_date;
UPDATE animals
SET weight_kg = -1 * weight_kg;
ROLLBACK TO delete_by_date;
UPDATE animals
SET weight_kg = -1 * weight_kg
WHERE weight_kg < 0;
SELECT * from animals;
COMMIT;



/*Modify animals transaction to contain species_id and  owners_id*/
BEGIN;
UPDATE animals
SET species_id = (SELECT id FROM species WHERE name = 'Digimon')
WHERE name LIKE '%mon';

UPDATE animals
SET species_id = (SELECT id FROM species WHERE name = 'Pokemon')
WHERE species_id IS NULL;
COMMIT;

UPDATE animals
SET owners_id = (SELECT id FROM WHERE full_name = 'Sam Smith')
WHERE name = 'Agumon';

UPDATE animals
SET owners_id = (SELECT id FROM owners WHERE full_name = 'Jennifer Orwell')
WHERE name = 'Gabumon' OR name = 'Pikachu';
COMMIT;