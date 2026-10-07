```sql
-- Week 1 Database Assignment
-- Refugee Child Learning Management System

-- Create the database
CREATE DATABASE refugee_child_learning;

-- Select the database
USE refugee_child_learning;

-- Create Students table
CREATE TABLE students (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    age INT,
    gender VARCHAR(20),
    settlement VARCHAR(100)
);

-- Create Teachers table
CREATE TABLE teachers (
    teacher_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100),
    subject VARCHAR(100)
);

-- Create Courses table
CREATE TABLE courses (
    course_id INT AUTO_INCREMENT PRIMARY KEY,
    course_name VARCHAR(100) NOT NULL,
    description VARCHAR(255),
    teacher_id INT,
    FOREIGN KEY (teacher_id) REFERENCES teachers(teacher_id)
);

-- Create Enrollments table
CREATE TABLE enrollments (
    enrollment_id INT AUTO_INCREMENT PRIMARY KEY,
    student_id INT,
    course_id INT,
    enrollment_date DATE,
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);

-- Insert sample students
INSERT INTO students (first_name, last_name, age, gender, settlement)
VALUES
('Amina', 'Lado', 12, 'Female', 'Kalobeyei'),
('John', 'Omondi', 14, 'Male', 'Kakuma'),
('Mary', 'Peter', 11, 'Female', 'Kalobeyei');

-- Insert sample teachers
INSERT INTO teachers (first_name, last_name, email, subject)
VALUES
('David', 'James', 'david@example.com', 'Mathematics'),
('Sarah', 'John', 'sarah@example.com', 'Science');

-- Insert courses
INSERT INTO courses (course_name, description, teacher_id)
VALUES
('Mathematics', 'Basic mathematics for learners', 1),
('Science', 'Introduction to science', 2);

-- Insert enrollments
INSERT INTO enrollments (student_id, course_id, enrollment_date)
VALUES
(1, 1, '2026-10-07'),
(2, 1, '2026-10-07'),
(3, 2, '2026-10-07');

-- Display the tables
SHOW TABLES;

-- Display students
SELECT * FROM students;

-- Display teachers
SELECT * FROM teachers;

-- Display courses
SELECT * FROM courses;

-- Display enrollments
SELECT * FROM enrollments;
```
-- Week 1 Database Assignment
-- Refugee Child Learning Management System

-- Select the database
USE refugee_child_learning;

-- Show all tables
SHOW TABLES;

-- Display all students
SELECT * FROM students;

-- Display all teachers
SELECT * FROM teachers;

-- Display all courses
SELECT * FROM courses;

-- Display all enrollments
SELECT * FROM enrollments;

CREATE DATABASE refugee_child_learning;

USE refugee_child_learning;

CREATE TABLE students (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    age INT,
    gender VARCHAR(20),
    settlement VARCHAR(100)
);

CREATE TABLE teachers (
    teacher_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100),
    subject VARCHAR(100)
);

CREATE TABLE courses (
    course_id INT AUTO_INCREMENT PRIMARY KEY,
    course_name VARCHAR(100) NOT NULL,
    description VARCHAR(255),
    teacher_id INT,
    FOREIGN KEY (teacher_id) REFERENCES teachers(teacher_id)
);

CREATE TABLE enrollments (
    enrollment_id INT AUTO_INCREMENT PRIMARY KEY,
    student_id INT,
    course_id INT,
    enrollment_date DATE,
    FOREIGN KEY (student_id) REFERENCES students(student_id)
);
-- Add sample students
INSERT INTO students (first_name, last_name, age, gender, settlement)
VALUES
('Amina', 'Lado', 12, 'Female', 'Kalobeyei'),
('John', 'Omondi', 14, 'Male', 'Kakuma'),
('Mary', 'Peter', 11, 'Female', 'Kalobeyei');

-- Add sample teachers
INSERT INTO teachers (first_name, last_name, email, subject)
VALUES
('David', 'James', 'david@example.com', 'Mathematics'),
('Sarah', 'John', 'sarah@example.com', 'Science');

-- Add sample courses
INSERT INTO courses (course_name, description, teacher_id)
VALUES
('Mathematics', 'Basic mathematics for learners', 1),
('Science', 'Introduction to science', 2);

-- Add student enrollments
INSERT INTO enrollments (student_id, course_id, enrollment_date)
VALUES
(1, 1, '2026-10-07'),
(2, 1, '2026-10-07'),
(3, 2, '2026-10-07');