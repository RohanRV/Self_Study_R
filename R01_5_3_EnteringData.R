# File:   EnteringData.R; Course: R: An Introduction (with RStudio)

# COLON OPERATOR #################################################
(x01 <- 0:10)                  # Asc order
(x02 <- 10:0)                  # Desc order

# SEQUENCE #######################################################
(x03 <- seq(10))               # Asc values (duplicates 1:10)
(x04 <- seq(30, 0, by = -3))   # Specify change in values

# ENTER MULTIPLE VALUES WITH CONCATENATE/COLLECT/COMBINE #########
(x05 <- c(5, 4, 1, 6, 7, 2, 2, 3, 2, 8))
(x06 <- c("a", "boy", "ttt", "z", "gh"))

# SCAN ###########################################################
(x07 <- scan())  # Click in console, add data, double Enter to stop
(x08 <- scan(what = "character"))

# REP ############################################################
(x09 <- rep("x", 5))
(x10 <- rep(c(T, F), 5))        # Alternate Repetitions
(x11 <- rep(c(T, F), each = 4)) # Grouped Repetitions

# CLEAN UP #######################################################
# Clear environment
rm(list = ls())
# Clear console
cat("\014")  # ctrl+L
# Clear mind :)