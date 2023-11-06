
-- general information about the different kinds of animals present in the zoo, such as their species, category, and other general details
CREATE TABLE AnimalDetails (
    animal_id SERIAL PRIMARY KEY,
    animal_type_id INT,
    name VARCHAR(50) NOT NULL,
    gender VARCHAR(10),
    date_of_birth DATE,
    health_status VARCHAR(50),
    enclosure_number INT,
    FOREIGN KEY (animal_type_id) REFERENCES AnimalTypes(animal_type_id)
);
--FOREIGN KEY (animal_type_id) REFERENCES AnimalTypes(animal_type_id): Establishes a foreign key relationship to connect each animal to its respective animal type in the AnimalTypes table.

INSERT INTO AnimalDetails (animal_type_id, name, gender, date_of_birth, health_status, enclosure_number)
VALUES 
(1, 'Simba', 'Male', '2018-05-10', 'Good', 1),
(2, 'Dumbo', 'Male', '2015-12-20', 'Excellent', 2),
(3, 'Chilly', 'Female', '2020-02-15', 'Fair', 3);

SELECT * FROM AnimalDetails;


--the value 'Good' will bring about a syntax error message because it's missing a necessary comma between the date and the 'health_status' value
INSERT INTO AnimalDetails (animal_type_id, name, gender, date_of_birth, health_status, enclosure_number)
VALUES 
(1, 'Simba', 'Male', '2018-05-10' 'Good', 1);
