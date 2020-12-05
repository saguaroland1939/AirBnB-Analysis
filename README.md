# AirBnB-Analysis

The purpose of this project was to collect multiple data sources, make changes to our pulled dataframes, and export our newly remodeled data to a SQL database. Our group focused on data sources relating to homes in chicago, airbnb listings, and local noise complaints. After collecting our data from our respective sources, listed below, we needed to convert different location types into a common form (zip code). One route we took was to use the GoogleMapsAPI, parsing address number and street names from noise complaints and pulling the zipcode from the json output. Meanwhile, we also found a python module Geopy that took our latitude and longitude values from our airbnb data and likewise created raw json output that we could request zipcode from. Once zip codes were found for all our data sets, we were able to group by zipcode to find averages and counts. After the data was transformed, our group exported the data to sql where the tables can be joined and queried.   

## Extract

### Data sources
#### AirBnB: http://insideairbnb.com/get-the-data.html
#### Zillow: https://www.kaggle.com/zillow/zecon?select=County_time_series.csv
#### Chicago noise complaint database: https://data.cityofchicago.org/Environment-Sustainable-Development/Noise-Complaints-in-Chicago/6ttz-f3sv/data

## Transform

### Airbnb
* Drop columns not required..
* Add new columns and calculate their values.
* Drop columns no longer required.
* Get zip code
* Drop columns no longer needed.
* Group data by zip code and get count of airbnbs in area and average price per night
* Delete missing data and typos.

### Noise Complaints
* Drop columns not required.
* Rename a column.
* Add new columns and calculate their values.
* Drop columns no longer required.
* Drop complaints dated earlier than 1/1/16 (keeping only complaints within approximately last 5 years).
* Get zip code, full address, latitude, and longitude from Google Maps geocoding API.
* Drop columns no longer needed.
* Group data by zip code and get count of noise complaints for each zip code.
* Delete missing data and typos.
* Convert zip code field to string.

### Zillow
* Reduced DataFrame to appliable columms
* Filtered data to the last five years
* Filtered Data to Chicago only ZIP codes
* Grouped by ZIP code and aggregated by means of house prices


## Load
* Once all Dataframes are made, Export to a SQL database.
* In SQL, the data can then be culminated and seperate conclusions can be found.
