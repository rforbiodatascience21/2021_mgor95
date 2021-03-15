# Clear workspace ---------------------------------------------------------
rm(list = ls())


# Load libraries ----------------------------------------------------------
library("tidyverse")


# Define functions --------------------------------------------------------
source(file = "R/99_project_functions.R")


# Load data ---------------------------------------------------------------
my_data_raw <- read_tsv(file = "data/_raw/gravier.RData")

load(file = "data/_raw/gravier.RData")




# Wrangle data ------------------------------------------------------------

gravier_data_raw <- gravier

gravier_x <- gravier_data_raw %>% 
  pluck("x") %>% 
  as.tibble() %>% 
  mutate()

gravier_y <- gravier_data_raw %>% 
  pluck("y") %>% 
  as.tibble() %>% 
  mutate()

# Write data --------------------------------------------------------------

write_tsv(x = gravier_x,
          path = "data/01_gravier_x.tsv.gz")

write_tsv(x = gravier_y,
          path = "data/01_gravier_y.tsv.gz")

