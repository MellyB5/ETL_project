-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/HebakK
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "country_region" (
    "country" VARCHAR(255)   NOT NULL,
    "region" VARCHAR(255)   NOT NULL,
    CONSTRAINT "pk_country_region" PRIMARY KEY (
        "country"
     )
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

ALTER TABLE "country_production" ADD CONSTRAINT "fk_country_production_country" FOREIGN KEY("country")
REFERENCES "country_region" ("country");

