# File:   Tidyverse.R; Course: R: An Introduction (with RStudio)

# LOAD PACKAGES ############################################
install.packages("pacman") # Install pacman
require(pacman)            # Gives a confirmation message.
library(pacman)            # No message.

# Or, by using "pacman::p_load". These are packages I load every time.
pacman::p_load(pacman, dplyr, GGally, ggplot2, ggthemes, ggvis, httr, lubridate, plotly, rio, rmarkdown, shiny, stringr, tidyr) 
library(datasets)  # Load/unload base packages manually

# CLEAN UP #################################################
# Clear packages
p_unload(dplyr, tidyr, stringr) # Clear specific packages
p_unload(all)  # Easier: clears all add-ons
detach("package:datasets", unload = TRUE)  # For base
# Clear console
cat("\014")  # ctrl+L
# Clear mind :)