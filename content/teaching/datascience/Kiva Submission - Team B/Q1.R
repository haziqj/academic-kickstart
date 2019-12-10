library(tidyverse)

kiva_loans %>%
  mutate(use=trimws(use)) %>% # Remove whitespace from "character" data type
  filter(!is.na(use)) %>% # Remove rows with no values

  mutate(repayment_interval=trimws(repayment_interval)) %>% #Remove whitespace
  filter(!is.na(repayment_interval)) %>% # Remove rows with no values

  select(use,repayment_interval) %>% # Extract a tibble with 2 vars: "use" and "repayment_interval"

  group_by(use,repayment_interval) %>% #Group by both vars
  summarise(count = n())%>% # Summarise group by no of occurrences of "use" -
                            # Definitely an ERROR here somewhere
                            # bc not sure what count n() makes when
                            # multiple vars are involved.
                            # I asssumed it would count "use" but was wrong.
  arrange(desc(count))  %>% # Rank "uses" in descending order.
  ungroup() %>%
  head(20) %>% # Select top 20

ggplot(aes(x = use, y=count,fill = repayment_interval)) + # Create stacked bar
  geom_bar(stat='identity') +
labs(x = 'Use of Loans', # Label plot
     y = 'Count',
     title = 'Activity and Count') +
  coord_flip() + # Flip coordinates
  theme_bw()

