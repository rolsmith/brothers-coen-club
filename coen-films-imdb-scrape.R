##%######################################################%##
#                                                          #
####      Scraping of Coen Brothers Film Data from      ####
####         IDMB # Roland Smith # 24 May 2021          ####
#                                                          #
##%######################################################%##

#Using methodology from https://medium.com/@shaulaandreinnaa/imdb-scraping-and-visualization-with-rstudio-4fc8d386585c


#Installing Packages ----
install.packages("rvest")
install.packages("xml2")
library(rvest)
library(xml2)

#Scrape for Joel and Ethan Coen AND feature ----
coens.feature.web <- 'https://www.imdb.com/search/title/?title_type=feature&roles=nm0001054,nm0001053&sort=year,asc'
coens.feature.scrape <- read_html(coens.feature.web)
coens.feature.scrape  

#Scrape for title ----
title_data_html <- html_nodes(coens.feature.scrape,'.lister-item-header a')

#Converting the title data to text
title_data <- html_text(title_data_html)
head(title_data)

director.data.html <- html_nodes(coens.feature.scrape,'.lister-item-content a:nth-child(1)')
director.data <- html_text(director.data.html)
head(director.data)
