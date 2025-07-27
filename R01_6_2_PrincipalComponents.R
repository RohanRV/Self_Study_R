# File:    R01_6_2_PrincipalComponents.R; Course:  R: An introduction

# PCA = Dimensionality Reduction (e.g. 2D shadows of 3D ppl; 1D regression line of 2D scatterplot)

# INSTALL AND LOAD PACKAGES ################################
pacman::p_load(pacman, dplyr, GGally, ggplot2, ggthemes, ggvis, httr, lubridate, plotly, rio, rmarkdown, shiny, stringr, tidyr)
library(datasets)  # Load base packages manually

# LOAD DATA ################################################
str(mtcars)
cars <- mtcars[, c(1:4, 6:7, 9:11)]; str(cars) # Select variables

# COMPUTE PCA ##############################################
(pca <- prcomp(cars, center = TRUE, scale = TRUE)) # For entire data frame
(pca <- prcomp(~ mpg + cyl + disp + hp + wt + qsec + am + gear + carb, data = mtcars, center = TRUE, scale = TRUE)) # specific

# EXAMINE RESULTS ##########################################
summary(pca); plot(pca)                 # Summary & Plot of PCA
predict(pca) %>% round(2); biplot(pca)  # See how cases load on PCA

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