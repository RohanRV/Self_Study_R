# File:   OverlayingPlots.R; Course: R: An Introduction (with RStudio)

# INSTALL AND LOAD PACKAGES ################################
library(datasets)  # Load/unload base packages manually

# LOAD DATA ################################################
# Annual Canadian Lynx trappings 1821-1934
?lynx
str(lynx)

# HISTOGRAM ################################################
par(mfrow = c(2, 1))
# Default
hist(lynx)
# Add some options
hist(lynx, breaks = 14, freq = FALSE, col = "thistle1", main = paste("Histogram 
     of Annual Canadian Lynx", "Trappings, 1821-1934"), xlab = "# of Lynx Trapped")
# Add a normal distribution
curve(dnorm(x, mean = mean(lynx), sd = sd(lynx)), col = "thistle4", lwd = 2, add = TRUE)
# Add two kernel density estimators
lines(density(lynx), col = "blue", lwd = 2)
lines(density(lynx, adjust = 3), col = "purple", lwd = 2)
# Add a rug plot
rug(lynx, lwd = 2, col = "gray")

# CLEAN UP #################################################
# Clear packages
detach("package:datasets", unload = TRUE)  # For base
# Clear plots
dev.off()  # But only if there IS a plot
# Clear console
cat("\014")  # ctrl+L
# Clear mind :)