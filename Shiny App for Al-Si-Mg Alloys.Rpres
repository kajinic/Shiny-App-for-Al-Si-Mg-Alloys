Solidification Range in Al-Si-Mg Alloys with Shiny App
========================================================
author: Alojz Kajinic
date: November 22, 2017
autosize: true

Introduction
========================================================

- Solidification of an alloy takes place over a range of temperatures and it depends on the alloy's chemical composition
- Temperature above which the alloy is completely in liquid state is referred to as **liquidus** 
- Temperature below which the alloy is completely in solid state is referred to as **solidus** 
- Difference between these two temperatures is **solidification (freezing) range**  


Predictions for Al-Si-Mg Alloys
========================================================

- The liquidus and solidus data for the **Al-Si-Mg** ternary system were calculated with open-source **OpenCalphad** software: <http://www.opencalphad.com/>  
- OpenCalphad software was coupled with **COST507** thermodynamic database for light alloys: <http://www.opencalphad.com/databases.html>
- Equilibrium computational results from OpenCalphad were loaded into **R** programming language for modeling
- **Multiple Polynomial Regressions** were implemented as a **Shiny App** and uploaded to **RStudio** server: <https://kajinic.shinyapps.io/Al-Si-Mg/>



Shiny App for Al-Si-Mg Alloys
========================================================

## **INPUT VALUES**

- Chemical composition of Al-Si-Mg alloys in this Shiny app are expressed in **weight percent**
- Range for **silicon (Si)** is between **0.1 wt. %** and **15.0 wt. %**
- Range for **magnesium (Mg)** is between **0.1 wt. %** and **0.8 wt. %**
- Values for Si and Mg are selected by using their respective Shiny app sliders


Shiny App for Al-Si-Mg Alloys
========================================================

## **OUTPUT VALUES**

- **Liquidus temperature**
- **Solidus temperature**
- **Solidification temperature range**
- All temprature values are expressed in **deg. C**
- **Root-Mean-Square Error (RMSE)** values
- **R-Squared** values
