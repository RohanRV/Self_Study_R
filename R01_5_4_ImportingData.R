# File:   ImportingData.R; Course: R: An Introduction (with RStudio)

# INSTALL AND LOAD PACKAGES ################################
library(datasets)  # Load base packages manually
# Installs pacman ("package manager") if needed
if (!require("pacman")) install.packages("pacman")
# Use pacman to load add-on packages as desired
pacman::p_load(pacman, rio) 

# ABOUT EXCEL FILES ########################################
# From the official R documentation
browseURL("http://j.mp/2aFZUrJ")
# You have been warned: ಠ_ಠ

# IMPORTING WITH RIO #######################################
# CSV
rio_csv <- import("~/Desktop/mbb.csv")
str(rio_csv)
# TXT
rio_txt <- import("~/Desktop/mbb.txt")
str(rio_txt)
# Excel XLSX
rio_xlsx <- import("~/Desktop/mbb.xlsx")
str(rio_xlsx)

# DATA VIEWER ##############################################
?View
View(rio_csv)

# READ.TABLE FOR TXT FILES #################################
# R's built-in function for text files (used by rio)
# TEXT FILES
# Load a spreadsheet that has been saved as tab-delimited text file. Need to give complete address to file. This
# command gives an error on missing data but works on complete data.
r_txt1 <- read.table("~/Desktop/mbb.txt", header = TRUE)

# This works with missing data by specifying the separator: 
# \t is for tabs, sep = "," for commas. R converts missing to "NA"
r_txt2 <- read.table("~/Desktop/mbb.txt", header = TRUE, sep = "\t")

# READ.CSV FOR CSV FILES ###################################
# R's built-in function for csv files (also used by rio)
# CSV FILES Don't have to specify delimiters for missing data as CSV = "comma"
trends.csv <- read.csv("~/Desktop/mbb.csv", header = TRUE)

# CLEAN UP #################################################
# Clear environment
rm(list = ls()) 
# Clear packages
p_unload(all)  # Remove all add-ons
# Clear console
cat("\014")  # ctrl+L
# Clear mind :)