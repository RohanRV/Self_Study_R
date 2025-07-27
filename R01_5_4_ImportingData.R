# File:   ImportingData.R; Course: R: An Introduction (with RStudio)

# INSTALL AND LOAD PACKAGES ################################
library(datasets)  # Load base packages manually
if (!require("pacman")) install.packages("pacman") # Pacman if needed
pacman::p_load(pacman, rio) # Use pacman to load add-on packages as desired


# ABOUT EXCEL FILES ########################################
p_help("http://j.mp/2aFZUrJ", web = F) # From the official R documentation


# IMPORTING WITH RIO #######################################
rio_csv  <- import("Data/mbb.csv"); str(rio_csv)    # CSV
rio_txt  <- import("Data/mbb.txt"); str(rio_txt)    # TXT
rio_xlsx <- import("Data/mbb.xlsx"); str(rio_xlsx)  # XLSX


# DATA VIEWER ##############################################
View(rio_csv); View(rio_txt); View(rio_xlsx)


# READ.TABLE FOR TXT FILES #################################
# R's built-in function for text files (used by rio)
# For spreadsheet saved as tab-delimited text file. Warns + Garb missing data.
r_txt1 <- read.table("Data/mbb.txt", header = TRUE); View(r_txt1)

# This works with missing data by specifying the separator: 
# sep = \t, sep = ",", etc. R converts missing to "NA".
r_txt2 <- read.table("Data/mbb.txt", header = TRUE, sep = "\t"); View(r_txt2)


# READ.CSV FOR CSV FILES ###################################
# R's built-in function for csv files (also used by rio)
# For CSV files, don't specify delimiters for missing data as CSV = "comma"
trends.csv <- read.csv("Data/mbb.csv", header = TRUE); View(trends.csv)


# CLEAN UP #################################################
# Clear environment
rm(list = ls())
# Clear packages
p_unload(all)  # Remove all add-ons
# Clear console
cat("\014")  # ctrl+L
# Clear mind :)