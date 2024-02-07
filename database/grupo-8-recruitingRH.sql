DROP DATABASE IF EXISTS recruitingRH;
CREATE DATABASE IF NOT EXISTS recruitingRH;
use recruitingRH;

CREATE TABLE `profesiones` (
  `id` INT AUTO_INCREMENT PRIMARY KEY,
  `nombre` VARCHAR(100) NOT NULL,
  `createdAt` DATE,
  `updatedAt` DATE,
  `deletedAt` DATE
);

CREATE TABLE `aspirantes` (
  `id` INT AUTO_INCREMENT PRIMARY KEY,
  `dni` INT UNIQUE NOT NULL,
  `nombre` VARCHAR(45) NOT NULL,
  `apellido` VARCHAR(45) NOT NULL,
  `email` VARCHAR(100) UNIQUE NOT NULL,
  `telefono` INT NOT NULL,
  `urlLinkedin` VARCHAR(255) NOT NULL,
  `fechaDeNacimiento` DATE,
  `sexo` ENUM('Masculino', 'Femenino', 'Otro') NOT NULL,
  `imagen` VARCHAR(255),
  `profesionId` INT NOT NULL,
  `createdAt` DATE,
  `updatedAt` DATE,
  `deletedAt` DATE,
  FOREIGN KEY (`profesionId`) REFERENCES `profesiones`(`id`)
);