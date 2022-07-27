#Activate functional libraries

library(tidyverse)
library(readxl)
library(ggplot2)
library(GGally)
library(corrplot)
library(corrgram)
library(PerformanceAnalytics)
library(psych)

#Import datasets

#2015 data

data2015 <- read_excel("nESI_2015.xlsx")

View(data2015)


#Compute correlation coefficients to measure ecosystem service interactions


#General correlation matrix

head(data2015)

#Option 1:

chart.Correlation(data2015, histogram = TRUE, pch = 100)

#Option 2:

pairs.panels(data2015,
             smooth = TRUE,
             scale = TRUE,
             density = TRUE,
             ellipses = TRUE,
             method = "kendall",
             lm = TRUE,
             cor = TRUE,
             jiggle = TRUE,
             factor = 6,
             hist.col = 6,
             stars = TRUE,
             ci = FALSE,
             main = "Sokoto-Rima Basin Ecosystem Service Interactions (2015)")


#option 3: 

GGally::ggpairs(data2015,
                ggplot2::aes())


GGally::ggcorr(data2015,
               method = c("everything", "kendall"),
               label = TRUE,
               label_alpha = TRUE)



#2050 data

data2050 <- read_excel("nESI_2050.xlsx")

View(data2050)


#Compute correlation coefficients to measure ecosystem service interactions

head(data2050)


#Option 1:

chart.Correlation(data2050, histogram = TRUE, pch = 100)

#Option 2:

pairs.panels(data2050,
             smooth = TRUE,
             scale = TRUE,
             density = TRUE,
             ellipses = TRUE,
             method = "kendall",
             lm = TRUE,
             cor = TRUE,
             jiggle = TRUE,
             factor = 6,
             hist.col = 6,
             stars = TRUE,
             ci = FALSE,
             main = "Sokoto-Rima Basin Ecosystem Service Interactions (2050)")

#option 3: 

GGally::ggpairs(data2050,
                ggplot2::aes())


GGally::ggcorr(data2050,
               method = c("everything", "kendall"),
               label = TRUE,
               label_alpha = TRUE)


#Select based on comprehensive information for selecting trade-offs and synergy computations
