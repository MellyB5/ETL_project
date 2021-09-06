-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/jV9USP
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.
Drop Table Choc_Rating

CREATE TABLE "Utilisation" (
    "Country" VARCHAR   NOT NULL,
    "Element" VARCHAR   NOT NULL,
    "Year" INT   NOT NULL,
    "Unit" VARCHAR   NOT NULL,
    "Value" INT   NOT NULL
);

CREATE TABLE "Choc_Rating" (
    "Country" VARCHAR   NOT NULL,
    "Company" VARCHAR   NOT NULL,
    "Year" VARCHAR   NOT NULL,
    "Cocoa_Percent" INT   NOT NULL,
    "Rating" Decimal   NOT NULL
);

ALTER TABLE "Choc_Rating" ADD CONSTRAINT "fk_Choc_Rating_Country" FOREIGN KEY("Country")
REFERENCES "Utilisation" ("Country");

