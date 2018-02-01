## make a barchart from the frequency table in data/add-on-packages-freqtable.csv
# package load
library(tidyverse)
library(here)

## read that csv into a data frame, then ...
apt_freqtable <- read.csv(here("data","add-on-packages-freqtable.csv"), stringsAsFactors = FALSE)
## if you use ggplot2, code like this will work:
builtplot <-
ggplot(apt_freqtable, aes(x = Built, y = n)) +
  geom_bar(stat = "identity")+ggtitle("gross chart")

## write this barchart to figs/built-barchart.png
ggsave(builtplot,filename = here("figs","built-barchart.png"),dpi = 300)

## YES overwrite the file that is there now
## that came from me (Jenny)

## when this script works, stage & commit it and the png file
## PUSH!
