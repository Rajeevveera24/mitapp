CREATE DATABASE alumni;

CREATE TABLE users (
    id INT NOT NULL,
    full_name VARCHAR(255) NOT NULL,
    reg_no int NOT NULL,
    email VARCHAR(255) NOT NULL,
    batch YEAR NOT NULL,
    branch VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE jobs (
    s_id INT NOT NULL,
    company VARCHAR(255) NOT NULL,
    location_company VARCHAR(255),
    role_company VARCHAR(255),
    startdate DATE NOT NULL,
    enddate DATE NOT NULL,
    ongoing BOOLEAN,
    FOREIGN KEY (s_id) REFERENCES users (id)
);

CREATE TABLE Internships (
    s_id INT NOT NULL,
    company VARCHAR(255) NOT NULL,
    location_company VARCHAR(255),
    role_company VARCHAR(255),
    startdate DATE NOT NULL,
    enddate DATE NOT NULL,
    ongoing BOOLEAN,
    research BOOLEAN,
    FOREIGN KEY (s_id) REFERENCES users (id)
);

CREATE TABLE Projects (
    s_id INT NOT NULL,
    title VARCHAR(255) NOT NULL,
    descrpt VARCHAR(255) NOT NULL,
    startdate DATE,
    enddate DATE,
    research BOOLEAN,
    fields VARCHAR(255),
    tech_stack VARCHAR(255),
    funded BOOLEAN,
    FOREIGN KEY (s_id) REFERENCES users (id)
);

CREATE TABLE Masters (
    s_id INT NOT NULL,
    university VARCHAR(255) NOT NULL,
    major VARCHAR(255) NOT NULL,
    minor VARCHAR(255),
    batch YEAR,
    country VARCHAR(255),
    city VARCHAR(255),
    FOREIGN KEY (s_id) REFERENCES users (id)
);

CREATE TABLE publications (
    s_id INT NOT NULL,
    title VARCHAR(255) NOT NULL,
    is_conference BOOLEAN NOT NULL,
    conf_name VARCHAR(255),
    fields VARCHAR(255),
    descript VARCHAR(255),
    present_date DATE,
    FOREIGN KEY (s_id) REFERENCES users (id)
);

CREATE TABLE branches (
    name_branch VARCHAR(255)
);

CREATE TABLE Skills (
    s_id INT NOT NULL,
    tech_skills VARCHAR(255),
    tech_used VARCHAR(255),
    FOREIGN KEY (s_id) REFERENCES users (id)
);