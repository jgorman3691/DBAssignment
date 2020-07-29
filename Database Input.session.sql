USE renters;
CREATE TABLE specificrepairs (
  TenantID VARCHAR(12) NOT NULL UNIQUE,
  list_of_repair VARCHAR(400) NOT NULL,
  cost_of_repair DECIMAL(8, 2) NOT NULL,
  date_of_repair DATE NOT NULL,
  store_used VARCHAR(40) NOT NULL,
  brand VARCHAR(30) NOT NULL,
  model VARCHAR(30) NOT NULL,
  warranty LONGBLOB,
  CONSTRAINT fk_category FOREIGN KEY (TenantID) REFERENCES tenant (TenantID)
);
CREATE TABLE tenantinfo(
  TenantID VARCHAR(12) NOT NULL UNIQUE,
  fname VARCHAR(20) NOT NULL,
  mname VARCHAR(20) NOT NULL,
  lname VARCHAR(30) NOT NULL,
  ssn CHAR(11),
  dob DATE,
  license VARCHAR(25),
  state_name CHAR(2),
  mobile_number VARCHAR(20),
  email VARCHAR(25),
  employer VARCHAR(30),
  CONSTRAINT fk_category FOREIGN KEY (TenantID) REFERENCES tenant (TenantID)
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