#Installing required packages
install.packages("ggplot2") #installing the ggplot2 package
install.packages("tidyverse") #installing the tidyverse package
install.packages("countrycode")

#Uploading the installed packages
library(ggplot2)
library(tidyverse)
library(countrycode)

#Import kiva_loans, kiva_mpi_region_locations, loan_theme_ids and loan_themes_by_region
library(readr) #to import csv file
kiva_loans <- read_csv("~/Documents/R/data-science-for-good-kiva-crowdfunding/kiva_loans.csv") #Depends on the file directory
View(kiva_loans) #to view the data

library(readr)
kiva_mpi_region_locations <- read_csv("~/Documents/R/data-science-for-good-kiva-crowdfunding/kiva_mpi_region_locations.csv")
View(kiva_mpi_region_locations)

library(readr)
loan_theme_ids <- read_csv("~/Documents/R/data-science-for-good-kiva-crowdfunding/loan_theme_ids.csv")
View(loan_theme_ids)

library(readr)
loan_themes_by_region <- read_csv("~/Documents/R/data-science-for-good-kiva-crowdfunding/loan_themes_by_region.csv")
View(loan_themes_by_region)

#to print
print("Q3")

#to assess the relation between world region and sector
table3 <- left_join(loan_themes_by_region, kiva_mpi_region_locations, by = "ISO") #combining two tables using left_join
#as_tibble(table3)
#select(table3, country.x, world_region) #Checking
ggplot(data = table3) +
  geom_count(mapping = aes(x = table3$world_region, y = table3$sector)) +
  labs(x = "Region", y = "Sector") #labelling of axes

#to assess relationship between continent and sector
#to assign continent to the data set
table9 <- loan_themes_by_region %>%
  #add a column having corresponding continent name in 'Continent' column
  mutate(Continent = countrycode(loan_themes_by_region$country, 'country.name', 'continent'))
#plotting
ggplot(data = table9) +
  geom_count(mapping = aes(x = table9$Continent, y = table9$sector)) +
  labs(x = "continent", y = "Sector")

#to assess the trend of loans qty by region
ggplot(data = loan_themes_by_region) +
  geom_count(mapping = aes(x = loan_themes_by_region$lat, y = loan_themes_by_region$lon, col = loan_themes_by_region$sector)) +
  labs(x = "Lat", y = "Lon", col = "Sector") +
facet_wrap(~loan_themes_by_region$country, nrow = 4) +
  coord_quickmap() #to ensure x and y axis using the same scale

#to assess the trend of loans type by region
##the data "Loan Type" need to be cleaned
ggplot(data = loan_themes_by_region) +
  geom_count(mapping = aes(x = loan_themes_by_region$lat, y = loan_themes_by_region$lon, col = loan_themes_by_region$`Loan Theme Type`)) +
  labs(x = "Lat", y = "Lon", col = "Loan Type") +
  facet_wrap(~loan_themes_by_region$country, nrow = 4) +
  coord_quickmap()

#Filter out for specific nation
mali_coord <- filter(loan_themes_by_region, country == "Mali")

#assessing the trend of sectors at different region in Mali
ggplot(data = mali_coord) +
  geom_count(mapping = aes(x = mali_coord$lat, y = mali_coord$lon, col = mali_coord$sector)) +
  labs(x = "Lat", y = "Lon", col = "Sector") +
  #facet_wrap(~loan_themes_by_region$country, nrow = 4) +
  coord_quickmap()

#filter for China
china_coord <- filter(loan_themes_by_region, country == "China")

#assessing the trend of sectors at different region in China
ggplot(data = china_coord) +
  geom_count(mapping = aes(x = china_coord$lat, y = china_coord$lon, col = china_coord$sector)) +
  labs(x = "Lat", y = "Lon", col = "Sector") +
  coord_quickmap()

#to assess the trend between sector and amount in different nation
ggplot(data = loan_themes_by_region) +
  geom_count(mapping = aes(x = loan_themes_by_region$sector, y = loan_themes_by_region$amount)) +
  labs(x = "Sector", y = "Amount") +
  facet_wrap(~loan_themes_by_region$country, nrow = 4) 

#to assess the relationship between amount of loans and region
ggplot(data = table9) +
  geom_count(mapping = aes(x = table9$Continent, y = table9$amount)) + #y data need to be normalised
  labs(x = "continent", y = "Amount") #+
  #facet_wrap(~loan_themes_by_region$country, nrow = 4)
