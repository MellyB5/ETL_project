# Analysis of Cocoa Supply Utilisation and Chocolate Ratings
## Extractions
The method of extraction used was to download CSV's and use Pandas to read into a Jupyter Notebook file

## Transformations
Transformation in Jupyter Notebook to achieve the following:
- Remove 0 Values as needed
- Dropping columns
- Renaming the remaining columns
- Remove rows from the Supply Unitilisation df that were deemed unnecessary based on the Element info

## Load
- Create schema for postgress 
- Establish connection into database for Jupyter Notebook
- Load dataframes into database from Jupyter Notebook
