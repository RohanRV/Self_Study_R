# File:    R01_6_2_PrincipalComponents.R; Course:  R: An introduction

# INSTALL AND LOAD PACKAGES ################################
# Packages I load every time; uses "pacman"
pacman::p_load(pacman, dplyr, GGally, ggplot2, ggthemes, ggvis, httr, lubridate, plotly, rio, rmarkdown, shiny, stringr, tidyr)
library(datasets)  # Load base packages manually

# LOAD DATA ################################################
str(mtcars)
cars <- mtcars[, c(1:4, 6:7, 9:11)]  # Select variables
str(cars)

# COMPUTE PCA ##############################################
# For entire data frame ####################################
pc <- prcomp(cars, center = TRUE, scale = TRUE)
# To specify variables #####################################
pc <- prcomp(~ mpg + cyl + disp + hp + wt + qsec + am + gear + carb, data = mtcars, center = TRUE, scale = TRUE)

# EXAMINE RESULTS ##########################################
# Get summary stats
summary(pc)
# Screeplot for number of components
plot(pc)
# Get standard deviations and rotation
pc
# See how cases load on PCs
predict(pc) %>% round(2)
# Biplot of first two components
biplot(pc)

# CLEAN UP #################################################
# Clear environment
rm(list = ls()) 
# Clear packages
p_unload(all)  # Remove all add-ons
detach("package:datasets", unload = TRUE)  # For base
# Clear plots
dev.off()  # But only if there IS a plot
# Clear console
cat("\014")  # ctrl+L
# Clear mind :)