-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "cocoa_daily_prices" (
    "Date" VARCHAR   NOT NULL,
    "New_York_futures_USD/tonne" float   NOT NULL,
    "ICCO_USD/tonne" float   NOT NULL,
    "year_code" VARCHAR   NOT NULL,
    "month_code" VARCHAR   NOT NULL,
    CONSTRAINT "pk_cocoa_daily_prices" PRIMARY KEY (
        "Date"
     )
);

CREATE TABLE "cocoa_monthly_prices" (
    "Month" VARCHAR   NOT NULL,
    "Euro/tonne" float   NOT NULL,
    "US$/tonne" float   NOT NULL,
    CONSTRAINT "pk_cocoa_monthly_prices" PRIMARY KEY (
        "Month"
     )
);

CREATE TABLE "NYF_yearly_summary" (
    "id" SERIAL   NOT NULL,
    "year_code" VARCHAR   NOT NULL,
    "mean" FLOAT   NOT NULL,
    "min" FLOAT   NOT NULL,
    "max" FLOAT   NOT NULL,
    CONSTRAINT "pk_NYF_yearly_summary" PRIMARY KEY (
        "id"
     )
);

CREATE TABLE "ICCO_yearly_summary" (
    "id" SERIAL   NOT NULL,
    "year_code" VARCHAR   NOT NULL,
    "mean" FLOAT   NOT NULL,
    "min" FLOAT   NOT NULL,
    "max" FLOAT   NOT NULL,
    CONSTRAINT "pk_ICCO_yearly_summary" PRIMARY KEY (
        "id"
     )
);

CREATE TABLE "NYF_monthly_summary" (
    "id" SERIAL   NOT NULL,
    "month_code" VARCHAR   NOT NULL,
    "mean" FLOAT   NOT NULL,
    "min" FLOAT   NOT NULL,
    "max" FLOAT   NOT NULL,
    CONSTRAINT "pk_NYF_monthly_summary" PRIMARY KEY (
        "id"
     )
);

CREATE TABLE "ICCO_monthly_summary" (
    "id" SERIAL   NOT NULL,
    "month_code" VARCHAR   NOT NULL,
    "mean" FLOAT   NOT NULL,
    "min" FLOAT   NOT NULL,
    "max" FLOAT   NOT NULL,
    CONSTRAINT "pk_ICCO_monthly_summary" PRIMARY KEY (
        "id"
     )
);

CREATE TABLE "production_indices" (
    "data_id" SERIAL   NOT NULL,
    "Domain" VARCHAR   NOT NULL,
    "area_code" INT   NOT NULL,
    "Area" VARCHAR   NOT NULL,
    "Element" VARCHAR   NOT NULL,
    "Item" VARCHAR   NOT NULL,
    "Year" INT   NOT NULL,
    "Unit" VARCHAR   NOT NULL,
    "Value" FLOAT   NOT NULL,
    CONSTRAINT "pk_production_indices" PRIMARY KEY (
        "data_id"
     )
);

CREATE TABLE "country_region" (
    "Country" VARCHAR   NOT NULL,
    "Region" VARCHAR   NOT NULL,
    CONSTRAINT "pk_country_region" PRIMARY KEY (
        "Country"
     )
);

CREATE TABLE "detailed_trade_matrix" (
    "ID" SERIAL PRIMARY KEY,
    "Reporter_countries" VARCHAR   NOT NULL,
    "Partner_countries" VARCHAR   NOT NULL,
    "Element" VARCHAR   NOT NULL,
    "Year" INT   NOT NULL,
    "Unit" VARCHAR   NOT NULL,
    "Value" BIGINT   NOT NULL
);
CREATE TABLE "value_agriculture" (
    "ID" SERIAL PRIMARY KEY,
    "Area" VARCHAR   NOT NULL,
    "Element" VARCHAR   NOT NULL,
    "Year" INT   NOT NULL,
    "Unit" VARCHAR   NOT NULL,
    "Value" BIGINT   NOT NULL
);
-- ALTER TABLE "detailed_trade_matrix" ADD CONSTRAINT "fk_detailed_trade_matrix_Reporter_counties" FOREIGN KEY("Reporter_countries")
-- REFERENCES "country_region" ("Country");
-- ALTER TABLE "detailed_trade_matrix" ADD CONSTRAINT "fk_detailed_trade_matrix_Partner_countries" FOREIGN KEY("Partner_countries")
-- REFERENCES "country_region" ("Country");
-- ALTER TABLE "value_agriculture" ADD CONSTRAINT "fk_value_agriculture_Area" FOREIGN KEY("Area")
-- REFERENCES "country_region" ("Country");

CREATE TABLE utilisation(
    ID SERIAL PRIMARY KEY,
	Area TEXT,
	Element TEXT,
	Year INT,
	Unit TEXT,
	Value INT);
			

CREATE TABLE choc_rating(
    ID SERIAL PRIMARY KEY,
	Company TEXT,
	Area TEXT,
	Year INT,
	Cocoa_Percent INT,
	Rating DECIMAL
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

-- ALTER TABLE "country_production" ADD CONSTRAINT "fk_country_production_Country" FOREIGN KEY("Country")
-- REFERENCES "country_region" ("Country");