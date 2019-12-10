#Data Science Course Assignment Q5

#---Part 1: Analysing gender discrepancy in the number of loans being funded

#Loading library
library(tidyverse)
library(stringr)
  
#Converting to tibbles
kiva_tibble <- as_tibble(kiva_loans)

#Subsetting
gender <- kiva_tibble$borrower_genders

#Counting occurences of female in dataset
fem <- str_count(gender,"female") 


#Counting occurences of male in dataset
mal <- str_count(gender,"\\bmale\\b")

#Counting number of loans for individual female
ind_f <- sum(fem==1 & mal==0, na.rm = TRUE)

#Counting number of loans for all female group (>1 female)
grp_f <- sum(fem>1 & mal==0, na.rm = TRUE)

#Counting number of loans for individual male 
ind_m <- sum(fem==0 & mal==1, na.rm = TRUE)

#Counting number of loans for all male group (>1 male)
grp_m <- sum(fem==0 & mal>1, na.rm = TRUE)

#Counting number of loans for mixed group (both male & female)
mxgrp <- sum(fem>=1 & mal>=1, na.rm = TRUE)

#Creating data for plotting the different groups
df <- data.frame(GenderGroup = c("Indiv Female","Group Female","Indiv Male",
                                 "Group Male", "Mixed Group"), 
                 Count = c(ind_f,grp_f,ind_m,grp_m,mxgrp))

df #Showing the count for different groups

#Checking if all groups sum up to be the total number of loans
sum(df$Count) + sum(is.na(gender)) == length(gender)

#Plotting bar chart for different groups
ggplot(data=df, aes(x=GenderGroup,y=Count)) + geom_bar(stat="identity") +
  geom_text(aes(label=Count), vjust=-0.3, size=3.5)

#Creating data for plotting the number of females vs males
df_b <- data.frame(Gender = c("Female","Male"), 
                  Count = c(sum(fem,NA,na.rm=TRUE), sum(mal,NA,na.rm=TRUE)))

df_b #Showing the count for females vs males

#Plotting bar chart for females vs males
ggplot(data=df_b, aes(x=Gender,y=Count)) + geom_bar(stat="identity") +
  geom_text(aes(label=Count), vjust=-0.3, size=3.5)


#---Part 2: Analysing gender discrepancy in the amount of loans being funded

#Converting funded_amount to BND
