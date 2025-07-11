###install.packages("tidyverse")

library(tidyverse)

library(stringr)
library(readxl)
actividad01 <- read_excel("C:/Users/PC/Downloads/actividad01.xlsx")
View(actividad01)

actividad02 <- read_excel("C:/Users/PC/Downloads/actividad01.xlsx", 
                          sheet = "variables")
View(actividad02)

filtro <- filter(actividad01, str_detect(Rapid_rating, "NULL"))

filtro
b<-actividad01 %>%  mutate(Rapid_rating = str_replace(Rapid_rating, "NULL", ""))
b
c<-filter(b, str_detect(Rapid_rating, "NULL"))
c
str_replace_na()
