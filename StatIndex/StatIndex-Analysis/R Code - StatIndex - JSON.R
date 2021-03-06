# Part 1 - Taking the JSON from Freebird ready for analysis

install.packages("RJSONIO")
library(RJSONIO)

install.packages("jsonlite")
library(jsonlite)


# Extract data direct from Freebird
news_json <- fromJSON("https://admin.freebird.prototyping.bbc.co.uk/recipes/94.json")

# Subset URLs containing news content
news_URL <- news_json$items$url

# Check first URL
news_URL_1 <- news_URL[1]