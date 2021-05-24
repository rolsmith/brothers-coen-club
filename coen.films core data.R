
##%######################################################%##
#                                                          #
####   Download of key information for Coen Brothers    ####
####         Films # Roland Smith # 24 May 2021         ####
#                                                          #
##%######################################################%##

#Reading information from initial csv

coen.films.total <- (Coen.Brothers.Film.Club...timetable.scores)
coen.films.total

#Stripping extraneous columns

coen.films.raw <-coen.films.raw[1:19,1:9]
coen.films.raw
names(coen.films.raw)

#Exploring data to scope further
coen.films[1,1]
coen.films[,3]
coen.films$Meeting
