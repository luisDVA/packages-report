## deja vu from yesterday!

## create a data frame of your installed packages
#' Load packages (install first if needed)
library(tidyverse)
library(here)

ipt <- installed.packages() %>%
  as_tibble() %>% select(Package,LibPath,Version,Priority,Built)

## write it to data/installed-packages.csv
write.csv(ipt,here("data","installed-packages.csv"),row.names = FALSE)


## when this script works, stage & commit it and the csv file
## PUSH!
