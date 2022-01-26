
library(tidyverse)
library(rvest)
library(dplyr)

row_to_names <- function(input)
{
  names(input) <- as.character(unlist(input[1,]))
  input[-1,]
}

Player.Payroll <- NULL

session <- html_session("https://hoopshype.com/salaries/players/")
index <- 1
link_index <- 73
while (index <= 31)
{
  a <- html_elements(session, "a")[[link_index]] %>% html_attr("href")
  new_session <- html_session(a)
  table <- html_nodes(new_session, "table")
  table <- table[[1]] %>% html_table %>% select(c(2,3))
  table <- row_to_names(table)

  ifelse(is.null(Player.Payroll),
         Player.Payroll <- as.data.frame(table),
         Player.Payroll <- merge(Player.Payroll,
                                 as.data.frame(table),
                                 all=TRUE))

  ifelse((index %% 2) != 0,
         link_index <- link_index + 16,
         link_index <- link_index - 15)
  index <- index + 1
}

Player.Payroll[, 2:32] <- lapply(Player.Payroll[,2:32],
                               function(x) as.numeric(gsub("[$,]", "", x)))

usethis::use_data(Player.Payroll, overwrite = TRUE)
