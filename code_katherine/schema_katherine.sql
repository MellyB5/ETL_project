-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/HebakK
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "country_region" (
    "country" VARCHAR(255)PK   NOT NULL,
    "region" VARCHAR(255)   NOT NULL
);

CREATE TABLE "country_production" (
    "country" VARCHAR(255)   NOT NULL,
    "year" INTEGER   NOT NULL,
    "Area_unit" VARCHAR(255)   NOT NULL,
    "Area_harvested" DECIMAL   NOT NULL,
    "Production_unit" VARCHAR(255)   NOT NULL,
    "Production" DECIMAL   NOT NULL,
    "Yield_unit" VARCHAR(255)   NOT NULL,
    "Yield" DECIMAL   NOT NULL,
    CONSTRAINT "pk_country_production" PRIMARY KEY (
        "country","year"
     )
);

CREATE TABLE "region_production" (
    "region" VARCHAR(255)   NOT NULL,
    "Area_unit" VARCHAR(255)   NOT NULL,
    "Area_harvested" DECIMAL   NOT NULL,
    "Production_unit" VARCHAR(255)   NOT NULL,
    "Production" DECIMAL   NOT NULL,
    "Yield_unit" VARCHAR(255)   NOT NULL,
    "Yield" DECIMAL   NOT NULL,
    CONSTRAINT "pk_region_production" PRIMARY KEY (
        "region"
     )
);

ALTER TABLE "country_region" ADD CONSTRAINT "fk_country_region_country" FOREIGN KEY("country")
REFERENCES "country_production" ("");

ALTER TABLE "country_region" ADD CONSTRAINT "fk_country_region_region" FOREIGN KEY("region")
REFERENCES "region_production" ("");

