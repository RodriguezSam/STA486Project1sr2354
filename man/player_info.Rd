% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/clean-data.R
\docType{data}
\name{player_info}
\alias{player_info}
\title{Player information}
\format{
A data frame with 217 observations with 30 columns.
\describe{
  \item{idPlayer}{numerical value to track player across tables}
  \item{namePlayer}{character value of the name of the player}
  \item{yearDraft}{the year the player was drafted into the NBA}
  \item{numberPickOveral}{the players overall pick in the NBA draft}
  \item{numberRound}{the round the player was drafted in the NBA}
  \item{numberRoundPick}{the number the player was picked within the round}
  \item{slugTeam}{the abreviation for the team the player is on}
  \item{nameOrganizationFrom}{where the player was before being drafted}
  \item{idTeam}{the id for the team is playing for}
  \item{nameTeam}{the name of the team the player is playing for}
  \item{cityTeam}{the city location of the team}
  \item{teamName}{the name of the team the player is playing for}
  \item{slugOrganizationTypeFrom}{where the player was before being drafted}
  \item{yearCombine}{the year the player participated in the NBA combine}
  \item{slugPosition}{the positio the player played}
  \item{heightWOShoesInches}{the height of the player without shoes in inches}
  \item{wightLBS}{the weight of the player in pounds}
  \item{wingspanInches}{the wingspan of the player in inches}
  \item{reachStandingInches}{a players reach while standing in inches}
  \item{verticalLeapStandingInches}{vertical jump average in inches}
  \item{verticalLeapMaxInches}{the max vertical jump in inches}
  \item{timeLaneAgility}{agility time in seconds}
  \item{timeThreeQuarterCourtSprint}{time sprint of court in seconds}
  \item{repsBenchPress135}{how many reps is done with 135 pounds}
  \item{pctBodyFat}{the percentage of body fat in the player}
  \item{heightWShoesInches}{heigh of player with shoes on in inches}
  \item{ptsAvg}{average points of player in their carrer}
  \item{astAvg}{average assits of player in their carrer}
  \item{redAvg}{average rebounds of player in their carrer}
  \item{allStarApp}{the number of appearances a player had in the all star game in their carrer}
}
}
\source{
\url{https://www.kaggle.com/wyattowalsh/basketball}
}
\usage{
player_info
}
\description{
This data has information on different basketball players in the NBA. The year
ranges from 2005-2020.
}
\keyword{datasets}
