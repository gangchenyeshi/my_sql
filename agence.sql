CREATE TABLE candidates (
    id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR (30),
    last_name VARCHAR (30),
    birthday DATE,
    salary INT,
    portfolio VARCHAR (200),
    github VARCHAR (200)
);
INSERT INTO candidates (first_name, last_name, birthday, salary, portfolio, github)
VALUES ('Ahmed','Ah', 2000/02/02, 50000, "ABCD", "ahmed.github" ), 
;


CREATE TABLE languages (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR (30),
    candidate_id INT,
    CONSTRAINT fk_language_id FOREIGN KEY (candidate_id) REFERENCES candidates(id)
)
INSERT INTO programming (`name`,`candidate_id`)
VALUES 
("React", 1),("React", 2), ("React", 3), ("React", 4), 
("Javascript", 1),("Javascript", 2), ("Javascript", 3), ("Javascript", 4), 
("Express", 1),("Express", 2), ("Express", 3), ("Express", 4),
("Angular", 1),("PHP", 2), ("Angular", 3), ("PHP", 4)
;

#6
SELECT * FROM `candidates`
CREATE TABLE programming (
    id INT PRIMARY KEY (AUTO_INCREMENT),
    name VARCHAR(30),
    candidate_id INT,
    CONSTRAINT fk_programming_id FOREIGN KEY(candidate_id) REFERENCES candidates(id)
)



#1
SELECT * FROM candidates;
#2
SELECT COUNT(*) FROM candidates
WHERE ID;
#3

#4
SELECT * FROM candidates
WHERE salary < 45000;
#5

#6
SELECT * FROM candidates
WHERE github IS NOT NULL
#7
SELECT * FROM candidates
WHERE github IS NOT NULL AND portfolio IS NOT NULL

#8
SELECT first_name FROM candidates
INNER JOIN languages 
ON candidates.id = languages.candidate_id
WHERE languages.name = "English";

#9
SELECT * FROM candidates
INNER JOIN programming 
ON candidates.id = programming.candidate_id
WHERE programming.name = "React"
#10
