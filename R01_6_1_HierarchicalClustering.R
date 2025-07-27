# File:   HierarchicalClustering.R; Course: R: An Introduction (with RStudio)

# CLUSTERING (Hier vs Set k; Measures of dist; Divisive vs Agglomerative)

# INSTALL AND LOAD PACKAGES ################################
library(datasets, methods, utils, stats, grDevices, graphics)
if (!require("pacman")) install.packages("pacman")
pacman::p_load(pacman, tidyverse)

# LOAD DATA ################################################
str(mtcars)
cars <- mtcars[, c(1:4, 6:7, 9:11)]; str(cars)  # Select variables

# TIDYVERSE PIPE OPERATOR ##################################
x <- c(10, 20, 30, 40, 50); y <- round(mean(x)); y
x <- c(10, 20, 30, 40, 50); y <- x %>% mean() %>% round(); y

# COMPUTE AND PLOT CLUSTERS ################################
# Save hierarchical clustering to "hc." This codes uses pipes from dplyr.
hc <- cars %>% dist %>% hclust; plot(hc) # Plot dendrogram

# ADD BOXES TO PLOT ########################################
rect.hclust(hc, k = 2, border = "gray")
rect.hclust(hc, k = 3, border = "blue")
rect.hclust(hc, k = 4, border = "green4")
rect.hclust(hc, k = 5, border = "darkred")

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