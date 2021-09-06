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

