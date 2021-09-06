# Analysis of Cocoa Production, Pricing and Consumption (by Katherine Howison)
## Extractions
Two main methods of extraction were used:
1.	Download csv and use Pandas to read into a Jupyter notebook as a dataframe (pd.read_csv(filepath)).
2.	Use Pandas to scrape table from web to read into a Jupyter notebook as a dataframe (pd.read_html(url)).
## Transformations
1.	Transformation in Excel
- Drop columns
2.	Transformation in a Jupyter notebook, including
- Dropping columns
- Renaming columns
- Resetting index
- Changing shape of dataframe (slice df into 3 separate tables, then merge back together to align chosen indices) (sort of like pivoting)
- Inner join of two tables from separate data sources) to match Country to Region
- Groupby to transform data from Country basis to Region basis
## Load
1.	Create schema for postgres using ERD
2.	Establish connection to postgres database
3.	Load dataframes into database from Jupyter notebook

# Analysis on Cocoa Daily Prices, Monthly Prices, and Production Indices (by Kevin Kurniawan)
## Extractions
1. In this part, the data used have been extracted from icco.rog (production indices) and fao.org (Chocolate bean pricing history)
2. All of these data came in a form of csv
3. Some of the daily prices in the csv contains commas, and as such, a comma separator needs to be noted when utilising read_csc from panda (refer to code notebook attached separately)
4. the analyst has planned to create 7 dataframe which will be uploaded into posgreSQL table covering the following:
    - cocoa daily prices
    - cocoa monthly prices
    - production indices
    - New York Futures yearly price summary (covering mean, min, max)
    - New York Futures monthly price summary (covering mean, min, max)
    - ICCO yearly price summary (covering mean, min, max)
    - ICCO monthly price summary (covering mean, min, max)
## Transformations
1. Panda library has been utilised to assist with data cleaning and transformation.
2. Step 1:
    - the first data cleaning was performed on cocoa daily prices which was obtained from FAO website. Multiple columns in the csv file has been removed to only include cocoa prices in USD under NY Futures and ICCO.<br>
    - the dataframe is then updated with year code (extract year from Date column) and month code (extract month/year from Date column) to allow grouping for yearly price and monthly price analysis.<br>
    - Finally, some column in the dataframe was renamed to make it shorter and easier to load into posgreSQL
3. Step 2: 
Once done, another dataframe to summarise monthly and yearly price movement was created from daily price dataframe, separated between New York Futures and ICCO using the year_code and month_code column in the daily price dataframe<br>
4. Step 3: 
Minimum cleaning was performed on production_indices dataframe to remove unusable columns

## Load
1. Once the above dataframes have been completed https://app.quickdatabasediagrams.com/#/ were used to design the relevant tables to store the dataframes
2. Serial ID has been utilised for dataframe with no unique entries such as production indices and NYF & ICCO monthly/yearly summary
3. these codes were then ran into posgreSQL
4. Python codes were utilised to upload these files directly into posgreSQL tables

