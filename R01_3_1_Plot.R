# File:   Plot.R; Course: R: An Introduction (with RStudio)

# LOAD DATASETS PACKAGES ###################################
library(datasets)  # Load/unload base packages manually

# LOAD DATA ################################################
str(iris)

# PLOT DATA WITH PLOT() ####################################
?plot  # Help for plot()

plot(iris$Species)                        # Categorical variable
plot(iris$Petal.Length)                   # Quantitative variable
plot(iris$Species, iris$Petal.Width)      # Cat x quant
plot(iris$Petal.Length, iris$Petal.Width) # Quant pair
plot(iris)  # Entire data frame
# Plot with options
plot(iris$Petal.Length, iris$Petal.Width, col = "#cc0000", cex = 0.5, pch = 9, main = "Iris: Petal Length vs. Width", xlab = "Length", ylab = "Width")

# PLOT FORMULAS WITH PLOT() ################################
plot(cos, 0, 2*pi)
plot(exp, 1, 5)
plot(dnorm, -3, +3)
# Formula plot with options
plot(dnorm, -3, +6, col = "#cc0000", lwd = 5, main = "Std Norm Dist", xlab = "z-scores", ylab = "Density")

# CLEAN UP #################################################
# Clear packages
detach("package:datasets", unload = TRUE)
# Clear plots
dev.off()  # But only if there IS a plot
# Clear console
cat("\014")  # ctrl+L
# Clear mind :)