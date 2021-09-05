Extractions
Two main methods of extraction were used:
1.	Download csv and use Pandas to read into a Jupyter notebook as a dataframe (pd.read_csv(filepath)).
2.	Use Pandas to scrape table from web to read into a Jupyter notebook as a dataframe (pd.read_html(url)).
Transformations
1.	Transformation in Excel
a.	Drop columns
b.	Kevin, not sure if you did your financial manipulations in Excel?
2.	Transformation in a Jupyter notebook, including
-	Dropping columns
-	Renaming columns
-	Resetting index
-	Changing shape of dataframe (slice df into 3 separate tables, then merge back together to align chosen indices) (sort of like pivoting)
-	Inner join of two tables from separate data sources) to match Country to Region
-	Groupby to transform data from Country basis to Region basis
Load
-	Create schema for postgres using ERD
-	Establish connection to postgres database
-	Load dataframes into database from Jupyter notebook
