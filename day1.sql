1 #
CREATE TABLE student (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(30),
    city VARCHAR(30)
)


INSERT INTO students (name,city)
VALUES ('Marc','Marseille'), 
('Nour','Lyon'),
 ('Romain','Paris'), 
 ('Sophie','Paris');


 2#
CREATE TABLE languages(
	id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(30)
 ) 

INSERT INTO languages (name)
VALUES ('French'),
	('English'),
    ('German'),
    ('MaSpanishrc'),
    ('Mandarin')
;


 3#
CREATE TABLE favorites(
	id INT PRIMARY KEY AUTO_INCREMENT,
    class VARCHAR(30),
    sport VARCHAR(30),
    student_id INT,
 ) 
INSERT INTO favorites (class, sport, student_id)
 VALUE("Maths", "Cricket", "2"),
("Music", "Hip-hop", "6"),
("Arts", "Boxing", "1"),
("Literature", "Tennis", "3"),
("Computer science", "Tennis", "5"),
("Arts", "Baseball", "4")
;


4#
CREATE TABLE students_languages (
	id INT PRIMARY KEY AUTO_INCREMENT,
  	student_id INT(1),
    language_id INT(1) 
)
INSERT INTO students_languages (student_id, language_id)
VALUE
("1", "1"),
("1", "2"),
("2", "1"),
("2", "3"),
("3", "1"),
("4", "1"),
("4", "2"),
("4", "4"),
("4", "5"),
("5", "1"),
("5", "5"),
("6", "1"),
("6", "2"),
("6", "3")
;


LVL 1#

SELECT * FROM students WHERE id = 3;

SELECT * FROM students WHERE id = 6;

SELECT name, city FROM students WHERE id = 1;

SELECT name FROM students WHERE id = 2;

SELECT * FROM students WHERE city = "paris";

SELECT name FROM students WHERE city = "Lyon";


# LVL 2#

SELECT * FROM students 
JOIN favorites ON students.id = favorites.student_id 
WHERE students.id = 5


SELECT name, sport FROM students 
JOIN favorites ON student.id = favorites.student_id
WHERE students.id = 4;

SELECT students.name, favorites.sport FROM students, favorites
WHERE students.id = 4 AND favorites.student_id = 4;

SELECT students.name, favorites.class FROM students, favorites
WHERE students.id = 1 AND favorites.student_id = 1;


SELECT * FROM students
INNER JOIN favorites ON students.id = favorites.student_id
WHERE favorites.class = "music";

SELECT students.name FROM students
INNER JOIN favorites ON students.id = favorites.student_id
WHERE favorites.sport = "Tennis";



SELECT COUNT(*) FROM students 
WHERE city = "Paris"

# 3
SELECT * FROM students
JOIN students_languages ON students.id =
students_languages.student_id
JOIN languages ON 
students_languages.student_id = languages.id




SELECT students.name, COUNT(*) FROM students
JOIN students_languages ON students.id =
students_languages.student_id
JOIN languages ON 
students_languages.student_id = languages.id
GROUP BY students.name



#BONUS
SELECT * from students
where name LIKE '%e%';


SELECT name, sport FROM students
JOIN favorites 
ON students.id = favorites.student_id
WHERE name LIKE '%e%';

SELECT class FROM students
JOIN favorites 
ON students.id = favorites.student_id
WHERE city LIKE '%i%'










