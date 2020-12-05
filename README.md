# AirBnB-Analysis

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


## Load
* Once all Dataframes are made, Export to a SQL database.
* In SQL, the data can then be culminated and seperate conclusions can be found.
