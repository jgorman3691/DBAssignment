CREATE TABLE repairs (
  TenantID VARCHAR(12) NOT NULL,
  FOREIGN KEY (TenantID) REFERENCES tenant (TenantID),
  First DEC(10,2),
  Second DEC(10,2),
  Third DEC(10,2)
);