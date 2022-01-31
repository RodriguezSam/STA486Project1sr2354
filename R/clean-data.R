#' Player information
#'
#' This data has information on different basketball players in the NBA. The year
#' ranges from 2005-2020.
#'
#' @format A data frame with 217 observations with 30 columns.
#' \describe{
#'   \item{idPlayer}{numerical value to track player across tables}
#'   \item{namePlayer}{character value of the name of the player}
#'   \item{yearDraft}{the year the player was drafted into the NBA}
#'   \item{numberPickOveral}{the players overall pick in the NBA draft}
#'   \item{numberRound}{the round the player was drafted in the NBA}
#'   \item{numberRoundPick}{the number the player was picked within the round}
#'   \item{slugTeam}{the abreviation for the team the player is on}
#'   \item{nameOrganizationFrom}{where the player was before being drafted}
#'   \item{idTeam}{the id for the team is playing for}
#'   \item{nameTeam}{the name of the team the player is playing for}
#'   \item{cityTeam}{the city location of the team}
#'   \item{teamName}{the name of the team the player is playing for}
#'   \item{slugOrganizationTypeFrom}{where the player was before being drafted}
#'   \item{yearCombine}{the year the player participated in the NBA combine}
#'   \item{slugPosition}{the positio the player played}
#'   \item{heightWOShoesInches}{the height of the player without shoes in inches}
#'   \item{wightLBS}{the weight of the player in pounds}
#'   \item{wingspanInches}{the wingspan of the player in inches}
#'   \item{reachStandingInches}{a players reach while standing in inches}
#'   \item{verticalLeapStandingInches}{vertical jump average in inches}
#'   \item{verticalLeapMaxInches}{the max vertical jump in inches}
#'   \item{timeLaneAgility}{agility time in seconds}
#'   \item{timeThreeQuarterCourtSprint}{time sprint of court in seconds}
#'   \item{repsBenchPress135}{how many reps is done with 135 pounds}
#'   \item{pctBodyFat}{the percentage of body fat in the player}
#'   \item{heightWShoesInches}{heigh of player with shoes on in inches}
#'   \item{ptsAvg}{average points of player in their carrer}
#'   \item{astAvg}{average assits of player in their carrer}
#'   \item{redAvg}{average rebounds of player in their carrer}
#'   \item{allStarApp}{the number of appearances a player had in the all star game in their carrer}
#' }
#' @source \url{https://www.kaggle.com/wyattowalsh/basketball}
"player_info"

library(dplyr)
library(tidyverse)
library(usethis)

draft <- read.csv('data-raw/draft.csv') %>% drop_na()
draft_combine <- read.csv('data-raw/draft_combine.csv') %>%
  select(c(1,2,5,6,7,9,10,12,14:20)) %>% drop_na()
player_info <- merge(draft, draft_combine)
player_info$slugPosition <- as.factor(player_info$slugPosition)
player_info$yearDraft <- as.factor(player_info$yearDraft)
player_info$yearCombine <- as.factor(player_info$yearCombine)
player_info$slugOrganizationTypeFrom <- as.factor(player_info$slugOrganizationTypeFrom)
player_attributes <- read.csv('data-raw/player_attributes.csv') %>%
  select(c(1,4,9,10,12:14,19:21,23,25,26,30:36)) %>% drop_na()
colnames(player_attributes) <- c("idPlayer", "namePlayer", "school", "country",
                                 "HEIGHT", "WEIGHT", "numberOfSeasons", "idTeam",
                                 "teamName", "slugTeam", "cityTeam",
                                 "fromYear", "toYear", "yearDraft", "numberRound",
                                 "numberPickOverall", "ptsAvg", "astAvg",
                                 "rebAvg", "allStarApp")
players <- player_attributes %>% select(c(1, 17:20))
player_info <- merge(player_info, players)
player_info <- player_info %>% select(c(1:8, 10:13, 15, 17:33))

#Don't need
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

usethis::use_data(player_info, overwrite = TRUE)
