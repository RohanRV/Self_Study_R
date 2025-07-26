# File:   Packages.R; Course: R: An Introduction (with RStudio)

# LOAD PACKAGES ############################################
# I recommend "pacman". It will install packages, if needed, & then load them.
install.packages("pacman")

# Then load the package by using either of the following:
require(pacman)  # Gives a confirmation message.
library(pacman)  # No message.

# Or, by using "pacman::p_load" you can use the p_load function from pacman without actually loading pacman.
# These are packages I load every time.
pacman::p_load(pacman, dplyr, GGally, ggplot2, ggthemes, ggvis, httr, lubridate, plotly, rio, rmarkdown, shiny, stringr, tidyr) 

library(datasets)  # Load/unload base packages manually

# CLEAN UP #################################################
# Clear packages
p_unload(dplyr, tidyr, stringr) # Clear specific packages
p_unload(all)  # Easier: clears all add-ons
detach("package:datasets", unload = TRUE)  # For base
# Clear console
cat("\014")  # ctrl+L
# Clear mind :)


?'datasets'
?'datasets-package'
library(help = "datasets")

library(datasets)

data()

str(AirPassengers)         # Monthly airline passenger numbers 1949-1960
str(BJsales)               # Box Jenkins sales data with leading indicator
str(BOD)                   # Biochemical Oxygen Demand
str(CO2)                   # Carbon Dioxide Uptake in Grass Plants
str(ChickWeight)           # Weight vs age of chicks on different diets
str(DNase)                 # Deoxyribonuclease enzyme with different conc
str(EuStockMarkets)        # Daily closing prices of major Euro stock indices
str(Formaldehyde)          # Optical density of formaldehyde at different conc
str(HairEyeColor)          # Pivot of Hair & Eye color of 592 students
str(Harman23.cor)          # Corr matrix for body measurements
str(Harman74.cor)          # Corr matrix for mental ability tests
str(Indometh)              # Plasma conc of Indometh vs time on diff subjects
str(InsectSprays)          # Insect spray effectiveness on 6 different sprays
str(JohnsonJohnson)        # Quarterly earnings per Johnson & Johnson share
str(LakeHuron)             # Annual levels of Lake Huron 1875-1972
str(LifeCycleSavings)      # Life cycle savings data for countries
str(Loblolly)              # Growth of Loblolly pine trees
str(Nile)                  # Annual flow of Nile River 1871-1876
str(Orange)                # Age vs circumference of orange trees
str(OrchardSprays)         # Effect of 8 sprays on apple orchard pesticides
str(PlantGrowth)           # Plant weight under 3 different treatments
str(Puromycin)             # Puromycin reaction rate vs conc in treated & untreated states
str(Theoph)                # Plasma conc of Theophylline vs time, dosage, & subject weight
str(Titanic)               # Survival of passengers on Titanic
str(ToothGrowth)           # Effect of Vitamin C on tooth growth in guinea pigs
str(UCBAdmissions)         # Pivot of Admits/Rejects vs Dept vs Gender of UCB
str(UKDriverDeaths)        # Monthly road deaths in UK 1969-1984
str(UKLungDeaths)          # Monthly lung deaths in UK 1974-1979
str(UKgas)                 # Quarterly gas consumption in UK 1960-1986
str(USAccDeaths)           # Monthly accidental deaths in US 1973-1978
str(USArrests)             # US states arrests per 100,000 residents for 1973
str(USJudgeRatings)        # Ratings of US District Court Judges on 12 criteria
str(USPersonalExpenditure) # US personal expenditures by categories for 5 years
str(VADeaths)              # Mortality rates in Virginia by age groups, gender, lifestyle
str(WWWusage)              # Scaled # of internet users
str(WorldPhones)           # # of telephones/1000 people vs continent for 7 years
str(ability.cov)           # Covariance matrix of 6 psychometric tests
str(airmiles)              # Annual passenger miles in US during 1937-1942
str(airquality)            # Daily AQI measurements in New York
str(anscombe)              # Anscombe's quartet of 8 datapoints to emphasise dataviz
str(attenu)                # Attenuation of signal magnitude vs station name & dist
str(attitude)              # Employees' feedbacks on diff aspcts of comp like raise, etc.
str(austres)               # Quarterly # of Australian residents on rent 1970-1993
str(beaver1)               # Body temp of beaversbased on time of day & activeness
str(beaver2)               # Body temp of beaversbased on time of day & activeness
str(cars)                  # Speed and stopping distances of cars    
str(chickwts)              # Weights of chicks on different diets
str(co2)                   # Monthly CO2 conc in air at Mauna Loa, Hawaii 1959-1997
str(crimtab)               # Dist of criminal by their height & both arms spread length
str(discoveries)           # # of major scientific discoveries/year 1860-1959
str(esoph)                 # Oesophageal cancer cases vs alcohol tobacco consumption vs age groups
str(euro)                  # Exchange Rate of 11 currencies vs Euro on 31 Dec 1998
str(eurodist)              # Distances of 21 major European cities among each other
str(faithful)              # Old Faithful Geyser eruption durations & wait times for next eruption
str(freeny)                # IBM quarterly revenues vs price indices, income levels, market potentials
str(gait)                  # Hip & knee angles of 39 boys at diff timestamps while walking
str(infert)                # Infertility in women across ages, educations, # of pregnancies & abortions
str(iris)                  # Iris flower petal & sepal measurements
str(islands)               # Areas of the world's islands
str(lh)                    # Luteinising Hormone level in a girl evry 10 min for 48 observations
str(longley)               # US annual Population vs GNP, GNP Deflator, & Employment 1947-1962
str(lynx)                  # Annual Canadian Lynx trappings 1821-1934
str(morley)                # Michelson-Morley's 5 sets of experiments to calc avg speed of light
str(mtcars)                # Motor Trend Car Road Tests' parameters' values
str(nhtemp)                # Average annual temperatures in New Haven, CT
str(nottem)                # Average monthly temperatures in Nottingham, UK
str(npk)                   # Nitrogen, phosphorus, & potassium effects on oat crop yield
str(occupationalStatus)    # Dad vs Son Labour, Farm, Operation, Craft, Sales, Clerk, Manager, Service
str(penguins)              # Measurements of penguins' bill, flipper, mass by species, sex, and island
str(precip)                # Precipitation values in US cities
str(presidents)            # Quarterly Gallup ratings of US Presidents 1945-1974
str(pressure)              # Temperature of Mercury vs its Vapour Pressure
str(quakes)                # 1000 Fiji Earthquakes' lat, long, depth, and magnitude
str(randu)                 # 400 triples of successive random # from VAX FORTRAN func RANDU
str(rivers)                # Lengths of 141 major US rivers
str(rock)                  # Area, Perimeter, Roundness, Permeability of 48 rocks
str(sleep)                 # Extra Sleep induced in 10 subjects when injected by 2 diff drugs
str(stackloss)             # Air Flow, Water Temp, Acid Conc, loss of Acid in going gas for 21 HNO3 manu
str(states)                # Demographic parameters of 50 US states 1975
str(sunspots)              # Monthly sunspot numbers 1749-1983
str(swiss)                 # Socioeconomic indicators of 47 Switzerland French-speaking provinces 1888
str(treering)              # Width of rings of some tree 0 to 1979 AD
str(trees)                 # Diameter, height, timber volume of 31 black cherry trees
str(uspop)                 # US Population (million) by the decennial census 1790–1970
str(volcano)               # Heights of many 10m squares on Auckland's Maunga Whau Volcano
str(warpbreaks)            # # of warp breaks vs wool type & tension level on string
str(women)                 # Heights and weights of 15 American women


# LEARNING DIFFERENT EXPLORAAORY DATA ANALYSIS FUNCTIONS
iris
print(iris)
head(iris)
tail(iris)
data(iris)
?data
names(iris)
dim(iris)
str(iris)
summary(iris)
View(iris)
ls()
?ls
rm(reg1, states, X, Y)
pacman::p_load(pacman, psych)
describe(iris)


# STANDARD CHOSEN EXPLORATORY DATA ANALYSIS FUNCTIONS TO BE RUN ON ANY NEW GIVEN DATASET
str(iris)
pacman::p_load(pacman, psych)
describe(iris)
plot(iris, col = "#cc0000", cex = 0.5, pch = 9)