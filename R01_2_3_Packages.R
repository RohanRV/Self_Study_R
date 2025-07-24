# File:   Packages.R
# Course: R: An Introduction (with RStudio)

# LOAD PACKAGES ############################################

# I recommend "pacman" for managing add-on packages. It will
# install packages, if needed, and then load the packages.
install.packages("pacman")

# Then load the package by using either of the following:
require(pacman)  # Gives a confirmation message.
library(pacman)  # No message.

# Or, by using "pacman::p_load" you can use the p_load
# function from pacman without actually loading pacman.
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

print(AirPassengers)         # Monthly airline passenger numbers 1949-1960
print(BJsales)               # Box Jenkins sales data with leading indicator
print(BOD)                   # Biochemical Oxygen Demand
print(CO2)                   # Carbon Dioxide Uptake in Grass Plants
print(ChickWeight)           # Weight vs age of chicks on different diets
print(DNase)                 # Deoxyribonuclease enzyme with different conc
print(EuStockMarkets)        # Daily closing prices of major Euro stock indices
print(Formaldehyde)          # Optical density of formaldehyde at different conc
print(HairEyeColor)          # Pivot of Hair & Eye color of 592 students
print(Harman23.cor)          # Corr matrix for body measurements
print(Harman74.cor)          # Corr matrix for mental ability tests
print(Indometh)              # Plasma conc of Indometh vs time on diff subjects
print(InsectSprays)          # Insect spray effectiveness on 6 different sprays
print(JohnsonJohnson)        # Quarterly earnings per Johnson & Johnson share
print(LakeHuron)             # Annual levels of Lake Huron 1875-1972
print(LifeCycleSavings)      # Life cycle savings data for countries
print(Loblolly)              # Growth of Loblolly pine trees
print(Nile)                  # Annual flow of Nile River 1871-1876
print(Orange)                # Age vs circumference of orange trees
print(OrchardSprays)         # Effect of 8 sprays on apple orchard pesticides
print(PlantGrowth)           # Plant weight under 3 different treatments
print(Puromycin)             # Puromycin reaction rate vs conc in treated & untreated states
print(Theoph)                # Plasma conc of Theophylline vs time, dosage, & subject weight
print(Titanic)               # Survival of passengers on Titanic
print(ToothGrowth)           # Effect of Vitamin C on tooth growth in guinea pigs
print(UCBAdmissions)         # Pivot of Admits/Rejects vs Dept vs Gender of UCB
print(UKDriverDeaths)        # Monthly road deaths in UK 1969-1984
print(UKLungDeaths)          # Monthly lung deaths in UK 1974-1979
print(UKgas)                 # Quarterly gas consumption in UK 1960-1986
print(USAccDeaths)           # Monthly accidental deaths in US 1973-1978
print(USArrests)             # US states arrests per 100,000 residents for 1973
print(USJudgeRatings)        # Ratings of US District Court Judges on 12 criteria
print(USPersonalExpenditure) # US personal expenditures by categories for 5 years
print(VADeaths)              # Mortality rates in Virginia by age groups, gender, lifestyle
print(WWWusage)              # Scaled # of internet users
print(WorldPhones)           # # of telephones/1000 people vs continent for 7 years
print(ability.cov)           # Covariance matrix of 6 psychometric tests
print(airmiles)              # Annual passenger miles in US during 1937-1942
print(airquality)            # Daily AQI measurements in New York
print(anscombe)              # Anscombe's quartet of 8 datapoints to emphasise dataviz
print(attenu)                # Attenuation of signal magnitude vs station name & dist
print(attitude)              # Employees' feedbacks on diff aspcts of comp like raise, etc.
print(austres)               # Quarterly # of Australian residents on rent 1970-1993
print(beaver1)               # Body temp of beaversbased on time of day & activeness
print(beaver2)               # Body temp of beaversbased on time of day & activeness
print(cars)                  # Speed and stopping distances of cars    
print(chickwts)              # Weights of chicks on different diets
print(co2)                   # Monthly CO2 conc in air at Mauna Loa, Hawaii 1959-1997
print(crimtab)               # Dist of criminal by their height & both arms spread length
print(discoveries)           # # of major scientific discoveries/year 1860-1959
print(esoph)                 # Oesophageal cancer cases vs alcohol tobacco consumption vs age groups
print(euro)                  # Exchange Rate of 11 currencies vs Euro on 31 Dec 1998
print(eurodist)              # Distances of 21 major European cities among each other
print(faithful)              # Old Faithful Geyser eruption durations & wait times for next eruption
print(freeny)                # IBM quarterly revenues vs price indices, income levels, market potentials
print(gait)                  # Hip & knee angles of 39 boys at diff timestamps while walking
print(infert)                # Infertility in women across ages, educations, # of pregnancies & abortions
print(iris)                  # Iris flower petal & sepal measurements
print(islands)               # Areas of the world's islands
print(lh)                    # Luteinising Hormone level in a girl evry 10 min for 48 observations
print(longley)               # US annual Population vs GNP, GNP Deflator, & Employment 1947-1962
print(lynx)                  # Annual Canadian Lynx trappings 1821-1934
print(morley)                # Michelson-Morley's 5 sets of experiments to calc avg speed of light
print(mtcars)                # Motor Trend Car Road Tests' parameters' values
print(nhtemp)                # Average annual temperatures in New Haven, CT
print(nottem)                # Average monthly temperatures in Nottingham, UK
print(npk)                   # Nitrogen, phosphorus, & potassium effects on oat crop yield
print(occupationalStatus)    # Dad vs Son Labour, Farm, Operation, Craft, Sales, Clerk, Manager, Service
print(penguins)              # Measurements of penguins' bill, flipper, mass by species, sex, and island
print(precip)                # Precipitation values in US cities
print(presidents)            # Quarterly Gallup ratings of US Presidents 1945-1974
print(pressure)              # Temperature of Mercury vs its Vapour Pressure
print(quakes)                # 1000 Fiji Earthquakes' lat, long, depth, and magnitude
print(randu)                 # 400 triples of successive random # from VAX FORTRAN func RANDU
print(rivers)                # Lengths of 141 major US rivers
print(rock)                  # Area, Perimeter, Roundness, Permeability of 48 rocks
print(sleep)                 # Extra Sleep induced in 10 subjects when injected by 2 diff drugs
print(stackloss)             # Air Flow, Water Temp, Acid Conc, loss of Acid in going gas for 21 HNO3 manu
print(states)                # Demographic parameters of 50 US states 1975
print(sunspots)              # Monthly sunspot numbers 1749-1983
print(swiss)                 # Socioeconomic indicators of 47 Switzerland French-speaking provinces 1888
print(treering)              # Width of rings of some tree 0 to 1979 AD
print(trees)                 # Diameter, height, timber volume of 31 black cherry trees
print(uspop)                 # US Population (million) by the decennial census 1790–1970
print(volcano)               # Heights of many 10m squares on Auckland's Maunga Whau Volcano
print(warpbreaks)            # # of warp breaks vs wool type & tension level on string
print(women)                 # Heights and weights of 15 American women