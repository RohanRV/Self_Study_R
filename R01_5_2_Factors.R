# File:   Factors.R; Course: R: An Introduction (with RStudio)

# Factor = attributes of vector specifying possible values & order

# CREATE DATA #################################################################################
x0  <- 1
(x1 <- 101:103) # parentheses will automatically print it
(y  <- 1:9)

# in rbind, col names are no longer x1 and y, hence typeof(df0$x1) = NULL
(df0 <- rbind.data.frame(x1, y)); df0$x1; typeof(df0$x1); str(df0); View(df0)
(df1 <- cbind.data.frame(x1, y)); df1$x1; typeof(df1$x1); str(df1)

# AS.FACTOR (notice presence of levels in df2$x2 ##############################################
x2 <- as.factor(c(101:103)); (df2 <- cbind.data.frame(x2, y)); df2$x2; typeof(df2$x2); str(df2)

# DEFINE EXISTING VARIABLE AS FACTOR ##########################################################
x3 <- c(101:103); (df3 <- cbind.data.frame(x3, y));  df3$x3; typeof(df3$x3); str(df3)
df3$x3 <- factor(df3$x3, levels = c(101, 102, 103)); df3$x3; typeof(df3$x3); str(df3)

# LABELS FOR FACTOR ###########################################################################
x4 <- c(101:103); (df4 <- cbind.data.frame(x4, y)); df4$x4; typeof(df4$x4); str(df4)
df4$x4 <- factor(df4$x4, levels = c(101, 102, 103), labels = c("Mac", "Win", "Lin"))
df4$x4; typeof(df4$x4); str(df4) # notice 103 104 105 levels renumbered to 1 2 3

# ORDERED FACTORS AND LABELS ##################################################################
x5 <- c(101:103); (df5 <- cbind.data.frame(x5, y)); df5$x5; typeof(df5$x5); str(df5)
df5$x5 <- ordered(df5$x5, levels = c(103, 101, 102), labels = c("No", "Maybe", "Yes"))
df5$x5; typeof(df5$x5); str(df5)

# SELF PRACTICE ###############################################################################
x6 <- c(1:12); x7 <- factor(c(1:4)); (df6 <- cbind.data.frame(x6, x7)); str(df6)

# CLEAN UP ####################################################################################
# Clear environment
rm(list = ls())
# Clear console
cat("\014")  # ctrl+L
# Clear mind :)