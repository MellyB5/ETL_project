CREATE TABLE "country_region" (
    "Country" VARCHAR   NOT NULL,
    "Region" VARCHAR   NOT NULL,
    CONSTRAINT "pk_country_region" PRIMARY KEY (
        "Country"
     )
);
CREATE TABLE "detailed_trade_matrix" (
    "Reporter_counties" VARCHAR   NOT NULL,
    "Partner_countries" VARCHAR   NOT NULL,
    "Import_qty" VARCHAR   NOT NULL,
    "Year" INT   NOT NULL,
    "Import_qty_unit" VARCHAR   NOT NULL,
    "Import_qty_value" INT   NOT NULL,
    "Import_value" VARCHAR   NOT NULL,
    "Import_value_unit" VARCHAR   NOT NULL,
    "Import_value_value" INT   NOT NULL,
    "Export_qty" VARCHAR   NOT NULL,
    "Exporty_qty_unit" VARCHAR   NOT NULL,
    "Export_qty_value" INT   NOT NULL,
    "Export_value" VARCHAR   NOT NULL,
    "Export_value_unit" VARCHAR   NOT NULL,
    "Export_value_value" INT   NOT NULL
);
CREATE TABLE "value_agriculture" (
    "Area" VARCHAR   NOT NULL,
    "Element" VARCHAR   NOT NULL,
    "Year" INT   NOT NULL,
    "Unit" VARCHAR   NOT NULL,
    "Value" INT   NOT NULL,
    CONSTRAINT "pk_value_agriculture" PRIMARY KEY (
        "Area","Year"
     )
);
ALTER TABLE "detailed_trade_matrix" ADD CONSTRAINT "fk_detailed_trade_matrix_Reporter_counties" FOREIGN KEY("Reporter_counties")
REFERENCES "country_region" ("Country");
ALTER TABLE "detailed_trade_matrix" ADD CONSTRAINT "fk_detailed_trade_matrix_Partner_countries" FOREIGN KEY("Partner_countries")
REFERENCES "country_region" ("Country");
ALTER TABLE "value_agriculture" ADD CONSTRAINT "fk_value_agriculture_Area" FOREIGN KEY("Area")
REFERENCES "country_region" ("Country");