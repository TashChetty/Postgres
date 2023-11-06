CREATE TABLE AnimalTypes (
    animal_type_id SERIAL PRIMARY KEY,
    species VARCHAR(50) NOT NULL,
    category VARCHAR(50),
    average_lifespan INT,
    habitat VARCHAR(100),
    conservation_status VARCHAR(50)
);

INSERT INTO AnimalTypes (species, category, average_lifespan, habitat, conservation_status)
VALUES 
('Tiger', 'Mammal', 15, 'Jungle', 'Endangered'),
('Elephant', 'Mammal', 60, 'Grassland', 'Vulnerable'),
('Penguin', 'Bird', 20, 'Cold Regions', 'Least Concern');

SELECT * FROM AnimalTypes;