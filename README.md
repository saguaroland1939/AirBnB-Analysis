#                                                            <img align="center" src="Final/Chicago skyline.jpg">
# AirBnB-Analysis

The purpose of this ETL class project was to collect multiple data sources (Extract), make changes to our pulled dataframes (Transform), and export our newly remodeled data to a SQL database (Load). Our group focused on data sources relating to homes in chicago, airbnb listings, and local noise complaints. After collecting our data from our respective sources, listed below, we needed to convert different location types into a common form (zip code) so that the tables could later be joined on zip code. One route we took was to use the Google Maps API, passing partial addresses to the API and parsing the zipcode from the json response. Meanwhile, we also found a python module Geopy that took our latitude and longitude values from our airbnb data and likewise created raw json output that we could request zipcode from. Once zip codes were found for all our data sets, we were able to aggregate each dataset to zip code. After the data was transformed, our group exported the data to a PostgreSQL database where the tables where the tables can be joined for future queries.

Used in this project: ETL workflow, Jupyter Notebooks, Python (numpy, pandas, requests, datetime, json, squalchemy, geopy), Postgresql, Google Maps API

## Extract

### Csv files were downloaded from the following websites and imported into Pandas DataFrames in Jupyter Notebooks.
### Data sources
#### AirBnB: http://insideairbnb.com/get-the-data.html
#### Zillow: https://www.kaggle.com/zillow/zecon?select=County_time_series.csv
#### Chicago noise complaint database: https://data.cityofchicago.org/Environment-Sustainable-Development/Noise-Complaints-in-Chicago/6ttz-f3sv/data

## Transform

### Airbnb
* Drop columns not required.
* Add new columns and calculate their values.
* Get zip code from Geopy module.
* Drop columns no longer needed.
* Group data by zip code and get count of airbnbs in area and average price per night
* Delete missing data and typos.

### Noise Complaints
* Drop columns not required.
* Rename a column.
* Add new columns and calculate their values.
* Drop columns no longer required.
* Drop complaints dated earlier than 1/1/16 (keeping only complaints within approximately last 5 years).
* Get zip code from Google Maps geocoding API.
* Drop columns no longer needed.
* Group data by zip code and get count of noise complaints for each zip code.
* Delete missing data and typos.
* Import csv file with full list of Chicago zip codes.
* Use merge (outer) and fillna() to add zip codes with 0 noise complaints.

### Zillow
* Reduced DataFrame to appliable columms
* Filtered data to the last five years
* Filtered Data to Chicago only ZIP codes
* Grouped by ZIP code and aggregated by means of house prices


## Load
* Once all Dataframes are prepared, Export to a PostgreSQL database for subsequent analysis.
