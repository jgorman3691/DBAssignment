CREATE TABLE tenant(
  TenantID VARCHAR(12) NOT NULL UNIQUE,
  HouseName VARCHAR(20) NOT NULL,
  StreetAddress VARCHAR(30) NOT NULL,
  HouseNumber INT NOT NULL,
  PurchaseDate DATE,
  Cost DEC(16,2) NOT NULL,
  Sex CHAR(1),
  PRIMARY KEY (TenantID)
);

CREATE TABLE repairs (
  TenantID VARCHAR(12) NOT NULL UNIQUE,
  id AUTO_INCREMENT NOT NULL,
  firstbill DECIMAL(10,2) NOT NULL UNIQUE,
  secondbill DECIMAL(10,2),
  thirdbill DECIMAL(10,2),
  PRIMARY KEY (id),
  CONSTRAINT fk_category
  FOREIGN KEY (TenantID) REFERENCES tenant (TenantID)
);

CREATE TABLE repair_table (
  TenantID VARCHAR(12) NOT NULL UNIQUE,
  id AUTO_INCREMENT NOT NULL,
  list_of_repair MEDIUMBLOB NOT NULL,
  cost_of_repair DECIMAL(10,2) NOT NULL,
  date_of_repair DATE NOT NULL UNIQUE,
  store_used VARCHAR(40) NOT NULL,
  brand VARCHAR(30) NOT NULL,
  model VARCHAR(30) NOT NULL,
  warranty LONGBLOB,
  PRIMARY KEY(id),
  CONSTRAINT fk_category
  FOREIGN KEY (TenantID) REFERENCES tenant (TenantID)
);

CREATE TABLE tenant_info(
  TenantID VARCHAR(12) NOT NULL UNIQUE,
  id AUTO_INCREMENT NOT NULL,
  fname  VARCHAR(20) NOT NULL,
  mname  VARCHAR(20) NOT NULL,
  lname  VARCHAR(30) NOT NULL,
  ssn CHAR(11),
  dob DATE,
  license VARCHAR(25),
  state_name CHAR(2),
  mobile_number VARCHAR(20),
  email VARCHAR(25),
  employer VARCHAR(30),
  PRIMARY KEY(id),
  CONSTRAINT fk_category
  FOREIGN KEY (TenantID) REFERENCES tenant (TenantID)
);

CREATE TABLE roomies (
  id AUTO_INCREMENT NOT NULL,
  fname VARCHAR(20),
  mname VARCHAR(20),
  lname VARCHAR(30),
  social CHARACTER(11),
  dob DATE,
  license VARCHAR(25),
  state_name CHARACTER(2),
  mobine_number VARCHAR(20),
  email VARCHAR(25),
  employer VARCHAR(30),
  PRIMARY KEY (id)
);