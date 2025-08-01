# File:   Scatterplots.R; Course: R: An Introduction (with RStudio)

# LOAD DATASETS PACKAGES ###################################
library(datasets)  # Load/unload base packages manually

# LOAD DATA ################################################
?mtcars
str(mtcars)

# PLOTS ####################################################
# Good to first check univariate distributions
hist(mtcars$wt)
hist(mtcars$mpg)
# Basic X-Y plot for two quantitative variables
plot(mtcars$wt, mtcars$mpg)
# Add some options
plot(mtcars$wt, mtcars$mpg, pch = 19, cex = 1.5, col = "#cc0000",
     main = "MPG as a Function of Wt", xlab = "Weight (in 1000 pounds)", ylab = "MPG")

# CLEAN UP #################################################
# Clear packages
detach("package:datasets", unload = TRUE)  # For base
# Clear plots
dev.off()  # But only if there IS a plot
# Clear console
cat("\014")  # ctrl+L
# Clear mind :)