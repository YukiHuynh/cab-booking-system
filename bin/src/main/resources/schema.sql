CREATE DATABASE cab_booking_system;

USE cab_booking_system;

CREATE TABLE users (
	id INT AUTO_INCREMENT PRIMARY KEY,
	name VARCHAR(100) NOT NULL,
	email VARCHAR(100) UNIQUE NOT NULL,
	password VARCHA(100) NOT NULL,
	role ENUM('CUSTOMER', 'DIRVER') NOT NULL,
	phone VARCHAR(15),
	location VARCHAR(255)
);

CREATE TABLE cabs (
	id INT AUTO_INCREMENT PRIMARY KEY,
	driver_id INT NOT NULL,
	cab_type ENUM('Economy', 'Premium', 'SUV') NOT NULL,
	registration_number VARCHAR(20),
	FOREIGN KEY (driver_id) REFERENCES user(id)
);

CREATE TABLE trips