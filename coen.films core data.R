
##%######################################################%##
#                                                          #
####   Download of key information for Coen Brothers    ####
####         Films # Roland Smith # 24 May 2021         ####
#                                                          #
##%######################################################%##

#Reading information from initial csv

coen.films <- (Coen.Brothers.Film.Club...timetable.scores)
coen.films

#Stripping extraneous columns

coen.films <-coen.films[1:19,1:9]
coen.films
names(coen.films)

