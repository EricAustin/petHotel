
-- Table 1: Owners
CREATE TABLE owners (
    id SERIAL PRIMARY KEY,
    first_name character varying(120),
    last_name character varying(120)
);

-- Table 2. Pets
CREATE TABLE pets (
    id SERIAL PRIMARY KEY,
    name character varying(255),
    breed character varying(60),
    color character varying(60),
    owner_id integer REFERENCES owners
);

-- Table 3. Visits
CREATE TABLE visits (
    id SERIAL PRIMARY KEY,
    check_in_date date,
    check_out_date date,
    pet_id integer REFERENCES pets
);

-- Test Inserts to Populate Tables
INSERT INTO owners (first_name, last_name)
VALUES ('Sam', 'Fortin'),
('Caleb', 'Miskowiec'),
('Eric', 'Austin');

INSERT INTO pets (name, breed, color, owner_id) 
VALUES ('Astro', 'Future Dog', 'Grey', 1),
('Bitzer', 'Sheepdog', 'Black and White', 2),
('Balto', 'Siberian Husky', 'Brown', 2),
('Chase', 'German Shepherd', 'Brown', 3),
('Courage', 'Cowardly Dog', 'Pink', 2),
('Mr. Peabody', 'Beagle', 'White', 1),
('Santa''s Little Helper', 'Greyhound', 'Orange', 3);

INSERT INTO visits (check_in_date, check_out_date, pet_id)
VALUES ('2010-03-05', '2010-03-06', 1),
('2012-02-08', '2012-02-12', 3),
('2016-02-07', '2016-02-09', 5),
('2011-03-04', '2011-03-08', 2),
('2012-09-22', '2012-09-24', 6),
('2012-09-23', '2012-09-29', 7),
('2013-05-25', '2013-05-26', 2);

-- Super Table JOIN
SELECT * 
FROM visits
FULL OUTER JOIN pets ON visits.pet_id = pets.id
FULL OUTER JOIN owners ON pets.owner_id = owners.id;