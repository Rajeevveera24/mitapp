CREATE TABLE branches (
	id INTEGER PRIMARY KEY AUTO_INCREMENT,
	code VARCHAR(5) UNIQUE NOT NULL,
    name VARCHAR(50) UNIQUE NOT NULL 
);

CREATE TABLE users(
	id INTEGER PRIMARY KEY AUTO_INCREMENT,
	name VARCHAR(30) NOT NULL,
	reg_no INTEGER UNIQUE NOT NULL,
	email VARCHAR(50) UNIQUE NOT NULL,
    batch YEAR NOT NULL,
    branch VARCHAR(5) NOT NULL,
    FOREIGN KEY (branch) REFERENCES branches(code) ON UPDATE CASCADE
);

CREATE TABLE projects (
    s_id INT NOT NULL,
    title VARCHAR(80) NOT NULL,
    descrpt VARCHAR(200) NOT NULL,
    start_date DATE,
    end_date DATE,
    research BOOLEAN NOT NULL,
    fields VARCHAR(100),
    tech_stack VARCHAR(200),
    funded BOOLEAN NOT NULL,
    FOREIGN KEY (s_id) REFERENCES users (id)
);

CREATE TABLE skills (
    s_id INT PRIMARY KEY,
    tech_skills VARCHAR(255),
    tech_used VARCHAR(255),
    other_skills VARCHAR(255),
    FOREIGN KEY (s_id) REFERENCES users (id)
);

CREATE TABLE internships (
    s_id INT NOT NULL,
    company VARCHAR(100) NOT NULL,
    location VARCHAR(50),
    role VARCHAR(50),
    startdate DATE NOT NULL,
    enddate DATE,
    ongoing BOOLEAN NOT NULL,
    research BOOLEAN NOT NULL,
    FOREIGN KEY (s_id) REFERENCES users (id)
);

CREATE TABLE jobs (
    s_id INT NOT NULL,
    company_name VARCHAR(100) NOT NULL,
    location VARCHAR(50),
    role VARCHAR(50),
    startdate DATE NOT NULL,
    enddate DATE,
    ongoing BOOLEAN NOT NULL,
    FOREIGN KEY (s_id) REFERENCES users (id)
);

CREATE TABLE masters (
    s_id INT PRIMARY KEY,
    university VARCHAR(100) NOT NULL,
    major VARCHAR(100) NOT NULL,
    minor VARCHAR(100),
    batch YEAR NOT NULL,
    country VARCHAR(100),
    city VARCHAR(100),
    FOREIGN KEY (s_id) REFERENCES users (id)
);

CREATE TABLE publications (
    s_id INT NOT NULL,
    title VARCHAR(100) NOT NULL,
    is_conference BOOLEAN NOT NULL,
    conf_name VARCHAR(255),
    fields VARCHAR(255),
    descript VARCHAR(200),
    present_date DATE,
    FOREIGN KEY (s_id) REFERENCES users (id)
);