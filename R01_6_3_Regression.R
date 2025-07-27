# File:   Regression.R; Course: R: An Introduction (with RStudio)

# Regression = One out of many; Use many vars to predict scores of 1 var

# INSTALL AND LOAD PACKAGES ################################
library(datasets)  # Load base packages manually
if (!require("pacman")) install.packages("pacman")
pacman::p_load(pacman, caret, lars, tidyverse)

# LOAD DATA ################################################
str(USJudgeRatings); data <- USJudgeRatings
(x <- as.matrix(data[, -12])); (y <- data[, 12]) # Define variable groups

# REGRESSION WITH SIMULTANEOUS ENTRY #######################
(reg1 <- lm(y ~ x)) # Using variable groups; ~ means is predicted by
(reg1 <- lm(RTEN ~ CONT + INTG + DMNR + DILG + CFMG + DECI + PREP + FAMI + ORAL + WRIT + PHYS, data = USJudgeRatings)) # Or specify variables individually
summary(reg1) # Results

# MORE SUMMARIES ###########################################
anova(reg1)            # Coefficients w/inferential tests
coef(reg1)             # Coefficients (same as reg1)
confint(reg1)          # CI for coefficients
resid(reg1)            # Residuals case-by-case
hist(residuals(reg1))  # Histogram of residuals

# ADDITIONAL MODELS ########################################
(stepwise      <- lars(x, y, type = "stepwise"))                                         # Conventional stepwise regression
(forward       <- lars(x, y, type = "forward.stagewise"))                                # Stagewise: Like stepwise but with better generalizability
(lar           <- lars(x, y, type = "lar"))                                              # LAR: Least Angle Regression
(lasso         <- lars(x, y, type = "lasso"))                                            # LASSO: Least Absolute Shrinkage and Selection Operator
(r2comp        <- c(stepwise$R2[6], forward$R2[6], lar$R2[6], lasso$R2[6]) %>% round(2)) # Comparison of R^2 for new models
names(r2comp)  <- c("stepwise", "forward", "lar", "lasso") 

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