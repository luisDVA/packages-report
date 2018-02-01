## create a data frame from data/installed-packages.csv
## with, e.g., readr::read_csv() or read.csv()
library(here)
library(tidyverse)

ipt <- read.csv(here("data","installed-packages.csv"),stringsAsFactors = FALSE)

## filter out packages in the default library
## keep variables Package and Built
## if you use dplyr, code like this will work:
apt <- ipt %>%
  filter(LibPath == .libPaths()[1]) %>%
  select(Package, Built)

## write this new, smaller data frame to data/add-on-packages.csv
write.csv(apt,here("data","add-on-packages.csv"),row.names = FALSE)

## make a frequency table of package by the version in Built
## if you use dplyr, code like this will work:
apt_freqtable <- apt %>%
  count(Built) %>%
  mutate(prop = n / sum(n))

## write this data frame to data/add-on-packages-freqtable.csv
write.csv(apt_freqtable,here("data","add-on-packages-freqtable.csv"),row.names = FALSE)


## when this script works, stage & commit it and the csv files
## PUSH!
