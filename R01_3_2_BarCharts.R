# File:   BarCharts.R; Course: R: An Introduction (with RStudio)

# LOAD DATASETS PACKAGES ###################################
library(datasets)

# LOAD DATA ################################################
?mtcars
str(mtcars)

# BAR CHARTS ###############################################
mtcars$cyl                      # Number of cylinders in each car
barplot(mtcars$cyl)             # Doesn't work
table(mtcars$cyl)               # Create table, it pivots them by frequencies
cylinders <- table(mtcars$cyl)  # Put it in variable
barplot(cylinders)              # Bar chart
plot(cylinders)                 # Default X-Y plot (lines), much cleaner graph

# CLEAN UP #################################################
# Clear environment
rm(list = ls()) 
# Clear packages
detach("package:datasets", unload = TRUE)  # For base
# Clear plots
dev.off()  # But only if there IS a plot
# Clear console
cat("\014")  # ctrl+L
# Clear mind :)