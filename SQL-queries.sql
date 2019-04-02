CREATE DATABASE city_report;

CREATE TABLE permits(
  "Permit Number" TEXT,
  "Application Creation Date" TEXT,
  "Block" TEXT,
  "Lot" TEXT,
  "Street Number" TEXT,
  "Street Number Suffix" TEXT,
  "Street Name" TEXT,
  "Street Suffix" TEXT,
  "Unit" TEXT,
  "Unit Suffix" TEXT,
  "Description" TEXT,
  "Status" TEXT,
  "Filed Date" TEXT,
  "Issued Date" TEXT,
  "Completed Date" TEXT,
  "Permit Valuation" TEXT,
  "Neighborhoods - Analysis Boundaries" TEXT,
  "Supervisor District" TEXT,
  "Zipcode" TEXT,
  "Location" TEXT
);


CREATE TABLE contacts(
  "Permit Number" TEXT,
  "Contact Type" TEXT,
  "Company Name" TEXT,
  "Street Number" TEXT,
  "Street" TEXT,
  "Street Suffix" TEXT,
  "State" TEXT,
  "Zipcode" TEXT,
  "Phone" TEXT,
  "Phone2" TEXT
);

CREATE TABLE fire_violations(
  "Violation Id" TEXT,
  "Primary" TEXT,
  "Violation Number" TEXT,
  "Violation Date" TEXT,
  "Violation Item" TEXT,
  "Violation Item Description" TEXT,
  "Citation Number" TEXT,
  "Corrective Action" TEXT,
  "Inspection Number" TEXT,
  "Address" TEXT,
  "Zipcode" TEXT,
  "Battalion" TEXT,
  "Station Area" TEXT,
  "Fire Prevention District" TEXT,
  "Status" TEXT,
  "Close Date" TEXT,
  "Supervisor District" TEXT,
  "Neighborhood  District" TEXT,
  "Location" TEXT
);

.import ./Electrical_Permits.csv permits
.import ./Electrical_Permits_Contacts.csv contacts
.import ./Fire_Violations.csv fire_violations

/* QUERIES FOR POSGREST */

\copy contacts FROM '/Users/lilivelazquez/Desktop/techtonica-projects/API-Challenge/Electrical_Permits_Contacts.csv' DELIMITER ',' CSV;

SELECT * FROM contacts limit 5;

\copy permits FROM '/Users/lilivelazquez/Desktop/techtonica-projects/API-Challenge/Electrical_Permits.csv' DELIMITER ',' CSV;

SELECT * FROM permits limit 5;

\copy fire_violations FROM '/Users/lilivelazquez/Desktop/techtonica-projects/API-Challenge/Fire_Violations.csv' DELIMITER ',' CSV;

SELECT * FROM fire_violations limit 5;



