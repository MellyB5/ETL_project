-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/HebakK
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "country_region" (
    "Country" VARCHAR(255)   NOT NULL,
    "Region" VARCHAR(255)   NOT NULL,
    CONSTRAINT "pk_country_region" PRIMARY KEY (
        "Country"
     )
);

CREATE TABLE "country_production" (
    "Country" VARCHAR(255)   NOT NULL,
    "Year" INTEGER   NOT NULL,
    "Area_unit" VARCHAR(255),
    "Area_harvested" DECIMAL ,
    "Production_unit" VARCHAR(255),
    "Production" DECIMAL ,
    "Yield_unit" VARCHAR(255) ,
    "Yield" DECIMAL ,
    CONSTRAINT "pk_country_production" PRIMARY KEY (
        "Country","Year"
     )
);

ALTER TABLE "country_production" ADD CONSTRAINT "fk_country_production_Country" FOREIGN KEY("Country")
REFERENCES "country_region" ("Country");

