# Set working directory (optional if you want relative paths)
setwd("C:/Users/saika/Desktop/CBA")

# Load dataset into mpg_data
mpg_data <- read.csv("mpg1.csv")

# Quick check
head(mpg_data)
library(tidyverse)
cars<-read.csv("mpg1.csv")
ggplot(mpg_data, aes(x = displ, y = hwy, color = class)) + 
  geom_point() + 
  geom_smooth(se = FALSE) +
  labs(
    x = "Displacement in liters",
    y = "Miles per gallon",
    title = "Highway Mileage vs Displacement"
  ) +
  theme_minimal()
ggplot(mpg_data, aes(x = displ, y = hwy, color = class)) + 
  geom_point() + 
  facet_wrap(~class) + 
  labs(
    x = "Displacement in liters",
    y = "Miles per gallon",
    title = "Highway Mileage vs Displacement by Class"
  ) +
  theme_minimal()
ggplot(mpg_data, aes(x = displ, y = hwy)) + 
  geom_point(aes(color = factor(cyl))) + 
  geom_smooth(aes(color = drv), method = "loess", se = FALSE) + 
  labs(
    title = "Highway Mileage vs. Displacement by Cylinders and Drive Type",
    x = "Displacement (liters)",
    y = "Miles per Gallon",
    color = "Drive Type"
  ) +  
  theme_minimal()
ggplot(mpg_data, aes(x = displ, y = hwy)) +  
  geom_point(aes(color = drv)) +   
  geom_smooth(aes(color = drv), se = FALSE) + 
  labs(
    title = "Highway Mileage vs. Displacement by Number of Cylinders",
    x = "Displacement (liters)",
    y = "Miles per Gallon",
    color = "Drive Type"
  ) + 
  facet_wrap(~cyl)
library(tidyverse)
## ── Attaching core tidyverse packages ──────────────────────── tidyverse 2.0.0 ──
## ✔ dplyr     1.1.4     ✔ readr     2.1.5
## ✔ forcats   1.0.0     ✔ stringr   1.5.1
## ✔ ggplot2   3.5.1     ✔ tibble    3.2.1
## ✔ lubridate 1.9.3     ✔ tidyr     1.3.1
## ✔ purrr     1.0.2     
## ── Conflicts ────────────────────────────────────────── tidyverse_conflicts() ──
## ✖ dplyr::filter() masks stats::filter()
## ✖ dplyr::lag()    masks stats::lag()
## ℹ Use the conflicted package (<http://conflicted.r-lib.org/>) to force all conflicts to become errors
plays <- read.csv("C:/Users/saika/Desktop/CBA/Prevention Plays.csv")
head(plays)
count_Affiliation <- count(plays, Affiliation)
head(count_Affiliation)
Top_Affiliation <- count_Affiliation %>% 
  arrange(desc(n)) %>% 
  slice_head(n = 21)

Top_Affiliation
plays$Affiliation <- recode(plays$Affiliation,
  "BBH" = "BBH MIDDLE SCHOOL",
  "BRECKSVILLE BROADVIEW HEIGHTS" = "BBH MIDDLE SCHOOL",
  "BRECKSVILLE BROADVIEW HEIGHTS MIDDLE SCHOOL" = "BBH MIDDLE SCHOOL"
)

# Recount affiliations after renaming
count_Affiliation <- count(plays, Affiliation)

# Filter top affiliations again (e.g., top 20)
Top_Affiliation <- count_Affiliation %>% 
  arrange(desc(n)) %>% 
  slice_head(n = 20)

Top_Affiliation
# Load necessary libraries
library(tidyverse)
## ── Attaching core tidyverse packages ──────────────────────── tidyverse 2.0.0 ──
## ✔ dplyr     1.1.4     ✔ readr     2.1.5
## ✔ forcats   1.0.0     ✔ stringr   1.5.1
## ✔ ggplot2   3.5.1     ✔ tibble    3.2.1
## ✔ lubridate 1.9.3     ✔ tidyr     1.3.1
## ✔ purrr     1.0.2     
## ── Conflicts ────────────────────────────────────────── tidyverse_conflicts() ──
## ✖ dplyr::filter() masks stats::filter()
## ✖ dplyr::lag()    masks stats::lag()
## ℹ Use the conflicted package (<http://conflicted.r-lib.org/>) to force all conflicts to become errors
# Import the data
Cars <- read.csv("mpg1.csv")
head(cars)
# Simple Bar Chart for Number of Cylinders (Without Data Labels)
ggplot(Cars) +
  geom_bar(aes(x=factor(cyl), fill=factor(cyl))) + 
  theme(legend.position="none") + 
  labs(x="Number of Cylinders", y="Number of Cars", 
       title="Number of Cars by Cylinders") + 
  theme(plot.title=element_text(size = 10, face = "bold", hjust=0.5)) +
  theme(axis.title=element_text(size=10, vjust=0.3))
# Frequency Distribution by Number of Cylinders
cyl_count <- count(Cars, cyl)

# Bar chart with descending order and data labels
ggplot(cyl_count, aes(x=reorder(factor(cyl), -n), y=n, fill=factor(cyl))) + 
  geom_bar(stat="identity") + 
  theme(legend.position="none") + 
  geom_text(aes(label=n), vjust=-0.3) + 
  labs(x="Number of Cylinders", y="Number of Cars", 
       title="Number of Cars by Cylinders (Descending Order)") + 
  theme(plot.title=element_text(size = 10, face = "bold", hjust=0.5)) +
  theme(axis.title=element_text(size=10, vjust=0.3))
# Add Percent column to the frequency distribution and round to zero decimal places
cyl_count$percent <- round(cyl_count$n * 100 / sum(cyl_count$n), 0)

# Bar chart with percentages as labels
ggplot(cyl_count, aes(x=reorder(factor(cyl), -percent), y=percent, fill=factor(cyl))) + 
  geom_bar(stat="identity") + 
  theme(legend.position="none") + 
  geom_text(aes(label=paste0(percent, "%")), vjust=-0.3) + 
  labs(x="Number of Cylinders", y="Percentage of Cars", 
       title="Percentage of Cars by Cylinders (Descending Order)") + 
  theme(plot.title=element_text(size = 10, face = "bold", color = "purple", hjust=0.5)) +
  theme(axis.title=element_text(size=10, color = "red", vjust=0.3))