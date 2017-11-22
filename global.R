library(shiny)

# Load the results calculated with open-sourse OpenCalphad software coupled with COST507 thermodynamic database.

alloys <- read.csv(file="AlSiMg_Dataset.csv",
                   header=TRUE, sep=",")

## Fit multiple linear models.

fit.liquidus <- lm(liquidus ~ Si+I(Si**2)+I(Si**3)+I(Si**4)+Mg+I(Mg**2)+I(Mg**3)+I(Mg**4),
                   data = alloys)

fit.solidus  <- lm(solidus ~ Si+I(Si**2)+I(Si**3)+I(Si**4)+Mg+I(Mg**2)+I(Mg**3)+I(Mg**4),
                   data = alloys)

fit.delta    <- lm(delta ~ Si+I(Si**2)+I(Si**3)+I(Si**4)+Mg+I(Mg**2)+I(Mg**3)+I(Mg**4),
                   data = alloys)
