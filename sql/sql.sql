CREATE DATABASE university;
USE university;
DROP TABLE user;
CREATE TABLE User (
	userId int NOT NULL,
    userName varchar(255),
    dOB date,
    userTel varchar(12),
    CONSTRAINT PK_User PRIMARY KEY(userId)
);
SELECT * from User;

CREATE TABLE course(
	courseId varchar(5) NOT NULL,
    courseName varchar(50),
    courseLedear varchar(50),
    CONSTRAINT PK_course PRIMARY KEY(courseId)
);
SELECT * FROM course;

CREATE TABLE User_course(
	userId int NOT NULL,
    courseId varchar(5) NOT NULL,
    PRIMARY KEY (userID,courseId),
    CONSTRAINT FK_user FOREIGN KEY (userId)
    REFERENCES User(userId),
    CONSTRAINT FK_course FOREIGN KEY (courseId)
    REFERENCES course(courseId)
);

SELECT * from User_course;

INSERT INTO User(userId, userName, dOB, userTel)
VALUES (1,"John","1999-05-02",0709709234),
	(2,"Liza","2002-03-10",0726098756),
	(3,"Kate","2001-12-10",0767097796),
	(4,"Roy","2000-11-23",0707096111);

SELECT * FROM User;


INSERT INTO course(courseId, courseName, courseLedear)
VALUES ("c1","java","Mr.Java"),
	("c2","python","Mr.Python"),
	("c3","react","Mr.React"),
	("c4","android","Mr.Android"),
	("c5","flutter","Mr.Flutter");
    
INSERT INTO User_course(userId,courseId)
VALUES (1,"c1"),
		(1,"c5"),
		(2,"c2"),
		(2,"c4"),
		(3,"c1"),
		(3,"c3"),
		(4,"c3"),
		(4,"c2");
        
SELECT * FROM User_course;

SELECT COUNT(userId), courseId
FROM User_course
GROUP BY courseId;

INSERT INTO User(userId, userName, dOB, userTel)
VALUES (5,"Jane","1999-08-22",0704749234),
	(6,"Sara","2002-02-10",0726098756),
	(7,"Tom","2000-12-15",0707093766),
	(8,"Loid","2001-01-26",0777893143);

SELECT * FROM User;


INSERT INTO User_course(userId,courseId)
VALUES (5,"c1"),
		(5,"c5"),
		(6,"c2"),
		(6,"c5"),
		(7,"c1"),
		(7,"c3"),
		(8,"c3"),
		(8,"c2");
        
SELECT * FROM User_course;

SELECT COUNT(userId), courseId
FROM User_course
GROUP BY courseId;

UPDATE User
SET userTel='0717879325'
WHERE userId=7;

SELECT * FROM User;

INSERT INTO User(userId, userName, dOB, userTel)
VALUES (9,"Sana","1999-05-23",0786753452);

SELECT * FROM User;

DELETE FROM User 
WHERE userId=9;

SELECT * FROM User
ORDER BY dOB;

