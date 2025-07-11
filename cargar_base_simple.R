###install.packages("tidyverse")

library(tidyverse)

library(stringr)
library(readxl)
actividad01 <- read_excel("C:/Users/PC/Downloads/actividad01.xlsx")
View(actividad01)

actividad02 <- read_excel("C:/Users/PC/Downloads/actividad01.xlsx", 
                          sheet = "variables")
View(actividad02)

arrange_01 = actividad01 %>% 
  group_by(Blitz_rating) %>% 
  summarise(n()) %>% 
  arrange(n())

filtro <- filter(actividad01, str_detect(Rapid_rating, "NULL"))

filtro
b<-actividad01 %>%  mutate(Rapid_rating = str_replace(Rapid_rating, "NULL", ""))
b
c<-filter(b, str_detect(Rapid_rating, "NULL"))
c




new<-b %>%  mutate(Year_of_birth = str_replace(Year_of_birth, "NO RESPONDE", ""))
new
new_3<-filter(new, str_detect(Year_of_birth, "NO RESPONDE"))
new_3

actividad01<-new %>% mutate(as.numeric(Year_of_birth),as.numeric(Rapid_rating), as.numeric(Blitz_rating) )


actividad01 %>%  summary()

filtro_rating = actividad01 %>%  filter(Standard_Rating > 4000)

actividad01 %>% group_by(Gender) %>% summarise(n())

###revent.snapshot()