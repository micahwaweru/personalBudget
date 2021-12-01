DROP DATABASE IF EXISTS budget;
CREATE DATABASE budget;

USE budget;

CREATE TABLE month (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(50) UNIQUE NOT NULL
);

CREATE TABLE category (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(50) UNIQUE NOT NULL,
  month_id INT UNSIGNED NOT NULL,
  INDEX mo_ind (month_id),
  CONSTRAINT fk_month FOREIGN KEY (month_id) REFERENCES month(id) ON DELETE CASCADE
);

CREATE TABLE transaction (
  id INTEGER AUTO_INCREMENT,
  first_name VARCHAR(30),
  category_id INTEGER (10),
  PRIMARY KEY (id)
);