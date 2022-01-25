# Hello, world!
#
# This is an example function named 'hello'
# which prints 'Hello, world!'.
#
# You can learn more about package authoring with RStudio at:
#
#   http://r-pkgs.had.co.nz/
#
# Some useful keyboard shortcuts for package authoring:
#
#   Install Package:           'Ctrl + Shift + B'
#   Check Package:             'Ctrl + Shift + E'
#   Test Package:              'Ctrl + Shift + T'

library(dplyr)
library(tidyverse)
library(usethis)

draft <- read.csv('data-raw/draft.csv') %>% drop_na()
draft_combine <- read.csv('data-raw/draft_combine.csv') %>%
  select(c(1,2,5,6,7,9,10,12,14:20)) %>% drop_na()
player_attributes <- read.csv('data-raw/player_attributes.csv') %>%
  select(c(1,4,9,10,12:14,19:21,23,25,26,30:36)) %>% drop_na()
player <- read.csv('data-raw/player.csv') %>%
  select(c(1,2)) %>% drop_na()

player_bios <- read.csv('data-raw/player_bios.csv') #might drop
player_salary <- read.csv('data-raw/player_salary.csv') %>%
  select(c(1:3,11,12)) %>% drop_na()
team_attribures <- read.csv('data-raw/team_attributes.csv') %>%
  select(c(1:5)) %>% drop_na()
team_history <- read.csv('data-raw/team_history.csv') %>% drop_na()
team_salary <- read.csv('data-raw/team_salary.csv') %>%
  select(c(1:3)) %>% drop_na()
team <- read.csv('data-raw/team.csv') %>% drop_na()

usethis::use_data(draft)
