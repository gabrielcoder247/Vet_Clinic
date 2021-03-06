/* Populate database with sample data. */
-- Animal: His name is Agumon. He was born on Feb 3rd, 2020, and currently weighs 10.23kg. He was neutered and he has never tried to escape.
INSERT INTO animals (
  id,
  name,
  date_of_birth,
  escape_attempts,
  neutered,
  weight_kg
) VALUES (
    1,
    'Agumon',
    '2020-2-3',
    0,
    true,
    10.23
);

-- Animal: Her name is Gabumon. Nov 15th, 2018, 8kg. She is neutered and she has tried to escape 2 times.
INSERT INTO animals (
  id,
  name,
  date_of_birth,
  escape_attempts,
  neutered,
  weight_kg
) VALUES (
    2,
    'Gabumon',
    '2018-11-15',
    2,
    true,
    8
);

-- Animal: His name is Pikachu. Jan 7th, 2021, 15.04kg. He was not neutered and he has tried to escape once.
INSERT INTO animals (
  id,
  name,
  date_of_birth,
  escape_attempts,
  neutered,
  weight_kg
) VALUES (
    3,
    'Pikachu',
    '2021-1-7',
    1,
    false,
    15.04
);
-- Animal: Her name is Devimon. May 12th, 2017, 11kg. She is neutered and she has tried to escape 5 times.
INSERT INTO animals (
  id,
  name,
  date_of_birth,
  escape_attempts,
  neutered,
  weight_kg
) VALUES (
    4,
    'Devimon',
    '2017-5-12',
    5,
    true,
    11
);

-- Animal: His name is Charmander. He was born on Feb 8th, 2020, and currently weighs -11kg. He is not neutered and he has never tried to escape.
INSERT into animals (
  id,
	name,
	date_of_birth,
	weight_kg,
	neutered,
	escape_attempts
) VALUES (
  5,
	'Charmander',
	'2020-02-08',
	-11,
	 false,
	 0
);

-- Animal: Her name is Plantmon. She was born on Nov 15th, 2022, and currently weighs -5.7kg. She is neutered and she has tried to escape 2 times.
INSERT into animals (
  id,
	name,
	date_of_birth,
	weight_kg,
	neutered,
	escape_attempts
) VALUES (
    6,
	'Plantmon',
	'2022-11-15',
	-5.7,
	 true,
	 2
);

-- Animal: His name is Squirtle. He was born on Apr 2nd, 1993, and currently weighs -12.13kg. He was not neutered and he has tried to 3 times.
INSERT into animals (
  id,
	name,
	date_of_birth,
	weight_kg,
	neutered,
	escape_attempts
) VALUES (
  7,
	'Squirtle',
	'1993-04-02',
	-12.13,
	false,
	3
);

-- Animal: His name is Angemon. He was born on Jun 12th, 2005, and currently weighs -45kg. He is neutered and he has tried to escape once.
INSERT into animals (
  id,
	name,
	date_of_birth,
	weight_kg,
	neutered,
	escape_attempts
) VALUES (
  8,
	'Angemon',
	'2005-06-12',
	-45,
	true,
	1
);

-- Animal: His name is Boarmon. He was born on Jun 7th, 2005, and currently weighs 20.4kg. He is neutered and he has tried to escape 7 times.
INSERT into animals (
  id,
	name,
	date_of_birth,
	weight_kg,
	neutered,
	escape_attempts
) VALUES (
  9,
	'Boarmon',
	'2005-06-07',
	20.4,
	true,
	7
);

-- Animal: Her name is Blossom. She was born on Oct 13th, 1998, and currently weighs 17kg. She is neutered and she has tried to escape 3 times.
INSERT into animals (
  id,
	name,
	date_of_birth,
	weight_kg,
	neutered,
	escape_attempts
) VALUES (
  10,
	'Blossom',
	'1998-10-13',
	17,
	true,
	3
);




/* Populate owners table with sample data. */

BEGIN;

INSERT INTO owners(
  full_name,
  age
) VALUES (
  'Sam Smith',
  34
);


-- Insert 'Jennifer Orwell 19 years old.'
INSERT INTO owners (
	full_name,
	age
) VALUES (
	'Jennifer Orwell',
	19
);

-- Insert 'Bob 45 years old.'
INSERT INTO owners (
	full_name,
	age
) VALUES (
	'Bob',
	45
);

-- Insert 'Melody Pond 77 years old.'
INSERT INTO owners (
	full_name,
	age
) VALUES (
	'Melody Pond',
	77
);

-- Insert 'Dean Winchester 14 years old.'
INSERT INTO owners (
	full_name,
	age
) VALUES (
	'Dean Winchester',
	14
);

-- Insert 'Jodie Whittaker 38 years old.'
INSERT INTO owners (
	full_name,
	age
) VALUES (
	'Jodie Whittaker',
	38
);

/* Populate species table with sample data. */

INSERT INTO species (
  name
) VALUES (
  'Pokemon'
);

INSERT INTO species (
  name
) VALUES (
  'Digimon'
);

