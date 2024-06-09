-- Create the 'users' table

CREATE DATABASE IF NOT EXISTS NAME_DATABASE;

USE NAME_DATABASE;

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    email VARCHAR(100) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Create the 'posts' table
CREATE TABLE posts (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    title VARCHAR(255) NOT NULL,
    content TEXT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(id)
);


INSERT INTO users (username, email, password) VALUES
('john_doe', 'john.doe@example.com', 'password123'),
('jane_smith', 'jane.smith@example.com', 'password123'),
('alice_jones', 'alice.jones@example.com', 'password123'),
('bob_brown', 'bob.brown@example.com', 'password123'),
('charlie_black', 'charlie.black@example.com', 'password123'),
('david_white', 'david.white@example.com', 'password123'),
('eve_green', 'eve.green@example.com', 'password123'),
('frank_blue', 'frank.blue@example.com', 'password123'),
('grace_red', 'grace.red@example.com', 'password123'),
('henry_yellow', 'henry.yellow@example.com', 'password123');


INSERT INTO posts (user_id, title, content) VALUES
(1, 'Post 1 by John', 'Content for post 1 by John'),
(2, 'Post 1 by Jane', 'Content for post 1 by Jane'),
(3, 'Post 1 by Alice', 'Content for post 1 by Alice'),
(4, 'Post 1 by Bob', 'Content for post 1 by Bob'),
(5, 'Post 1 by Charlie', 'Content for post 1 by Charlie'),
(6, 'Post 1 by David', 'Content for post 1 by David'),
(7, 'Post 1 by Eve', 'Content for post 1 by Eve'),
(8, 'Post 1 by Frank', 'Content for post 1 by Frank'),
(9, 'Post 1 by Grace', 'Content for post 1 by Grace'),
(10, 'Post 1 by Henry', 'Content for post 1 by Henry');
