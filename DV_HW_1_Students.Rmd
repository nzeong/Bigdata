---
title: "Homework 1"
author: "Ewha Kim <br> <br> Department of Data Science <br>  School of Artificial Intelligence <br> Ewha Womans University"
date: "Due by: Sunday, September 22, 2024, at 11:59 PM"
output:
  html_document:
---

```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
library(data.table)
library(dslabs)
library(dplyr)
library(ggplot2)
```

# Logistics

* Students are encouraged to collaborate and discuss course problems with peers, instructors, or AI tools to enhance their understanding.
* However, when writing up their solutions and programming codes, students are required to do this on their own, **without copying or plagiarizing from another source**.
* All solutions and code must be the student’s own work.
* Copying or plagiarizing from any source, including other students or AI generated content, is strictly prohibited and will result in a score of zero for that assignment or exam.

# Problem 1: Intro to R

## Problem 1-1 [1 point]

Install and load the `stringr` package.

```{r, echo=T, message=F, warning=F, eval=F}
FILL OUT HERE
```

### Solution

```{r, echo=T, message=F, warning=F}

```

## Problem 1-2 [1 point]

What is the name of a function that splits a string in `stringr` R package? Look into the help file to find a function. If you see multiple possibilities, use one that does _not_ end in `_all`.

### Solution



## Problem 1-3 [2 points]

Assign your full name to the variable `name` (e.g., `name <- "Ewha Kim"`). Using the function you found above, find a way to extract just your first name, and assign it to the variable `first_name`.
+ Hint: The above function should return the vector containing the words in your name wrapped in another structure called a *list*. Lists are like more flexible vectors, but whereas you get the first element of a vector like `[1]`, you get the first element of a list like this: `[[1]]`.
+ Part of your code might look a little like this: `function(name)[[1]]`


```{r, echo=T, message=F, warning=F, eval=F}
name <- "Ewha Kim"
first_name <- FILL OUT HERE
FILL OUT HERE # print the first name
```


### Solution 

```{r, echo=T, message=F, warning=F}

```

## Problem 1-4 [3 points]

We have a `fruits` variable containing `5` different fruits in a string. Program how often "Apple" appeared in a string using the function that you found from Problem 1-1 in combination with basic operators we learned in "Introduction to R".

```{r, echo=T, message=F, warning=F, eval=F}
fruits <- "Apple_Banana_Orange_Blueberry_Mango_Apple_Orange_Apple_Orange"
FILL OUT HERE
FILL OUT HERE # the final result should output 3
```

### Solution

```{r, echo=T, message=F, warning=F}

```

## Problem 1-5 [3 points]

* Choose a function from the `stringr` R package that you find interesting. 
* Briefly describe its purpose.
* Provide a code example demonstrating how to use it.

### Solution


# Problem 2: dplyr

## Problem 2-1 [3 points]

Given the dataset `murders`, which contains columns for `population` and `total` (total number of murders), write an R code snippet that calculates the murder rate per 1 million people. Hint: The code should sum the population and total number of murders, compute the rate as the total number of murders divided by the population, multiplied by $10^6$, and return this rate.

```{r, eval=F, message=F, warning=F}
library(dplyr)
library(dslabs)
data(murders)
FILL OUT HERE
```

### Solution

```{r, eval=T, message=F, warning=F}

```

## Problem 2-2 [3 points]

Given the dataset `nyc_regents_scores`, write an R code snippet that filters out rows with missing values in the `score` column. Then, add a new column called `total` to the `nyc_regents_scores` data that is the total frequency of each score by summing up the frequency of each subject (consider NA as 0 when summing up).

```{r, eval=F, message=F, warning=F}
FILL OUT HERE
```

### Solution

```{r, eval=F, message=F, warning=F}

```


## Problem 2-3 [4 points]

The dataset `us_contagious_diseases`, includes columns for `disease`, `state`, `year`, `weeks_reporting`, `count`, and `population`. Write an R code snippet that filters out the states "Hawaii" and "Alaska" and selects rows for the specified disease "Measles". Calculate the rate of the disease per 100,000 people per year, assuming 52 weeks in a year. 

```{r, eval=F, message=F, warning=F}
data(us_contagious_diseases)
?us_contagious_diseases # detailed explanation of the data
dat <- us_contagious_diseases |>
  FILL OUT HERE |>
  FILL OUT HERE |>
  mutate(rate = rate * 52 / weeks_reporting) # converts the disease rate reported over a certain number of weeks into an annual rate by adjusting for the length of the reporting period
```

### Solution

```{r, eval=F, message=F, warning=F}

```




# Problem 3: data.table

## Problem 3-1 [1 point]

Is original version of `murders` dataset in a `data.table` format? What is it?

```{r, echo=T, message=F, warning=F}
library(data.table)
data(murders) 
class(murders)
```

## Problem 3-2 [1 point]

Convert the `murders` data frame into a `data.table` by referencing. Explain the second to fourth lines of the code below.

```{r, eval=F, message=F, warning=F}
FILL OUT HERE
murders[,.N]
murders[,unique(region)]
murders[,uniqueN(state)]
```

### Solution

```{r, echo=T, message=F, warning=F}

```

## Problem 3-3 [1 point]

Calculate the number of states within each region.

```{r, eval=F, message=F, warning=F}
FILL OUT HERE
```

### Solution

```{r, echo=T, message=F, warning=F}

```

## Problem 3-4 [1 point]

Calculate the number of states in each region where the total number of murders exceeds 20.

```{r, message=F, warning=F, eval=F}
FILL OUT HERE
```

### Solution

```{r, echo=T, message=F, warning=F}

```

## Problem 3-5 [3 points]

Calculate the average population size across states within each region, but only for those states where the total number of murders exceeds 20. Moreover, name this column as a `ave_population`. You should a `data.table` with two columns at the end: `region` and `ave_population`

```{r, eval=F, message=F, warning=F}
FILL OUT HERE
```

### Solution

```{r, echo=T, message=F, warning=F}

```

## Problem 3-6 [3 points]

This is a [vignette introducing the `data.table` syntax](https://cran.r-project.org/web/packages/data.table/vignettes/datatable-intro.html). 

* Find a syntax that you find interesting. 
* Briefly describe its purpose.
* Provide a code example demonstrating how to use it.


# Problem 4: ggplot

## Problem 4-1 [3 points]

Using `murders` data, create a scatter plot as below where x-axis represent a population in million in log scale (i.e., $log_{10} (\text{population}/10^6)$ and y-axis represent total number of murders. Denote x-axis label as "Populations in millions (log scale)", y-axis label as "Total number of murders (log scale)", and title as "US Gun Murders in 2010". Explain each line of the code by adding a comment on each line.

```{r, eval=FALSE, warning=FALSE, message=F, out.width="70%", fig.align="center"}
library(ggplot2)
data(murders)
r <- murders |> 
  summarize(pop=sum(population), tot=sum(total)) |> 
  mutate(rate = tot/pop*10^6) |> pull(rate)

murders |> 
  ggplot(aes(x = FILL OUT HERE, y = FILL OUT HERE, label = abb)) +  
  geom_point(aes(color=FILL OUT HERE), size = 3) +
  FILL OUT HERE + 
  FILL OUT HERE + 
  FILL OUT HERE +
  geom_abline(intercept = log10(r), slope=1, lty=2, col="darkgrey") +
  geom_text(hjust = 0, nudge_x = 0.05)+
  scale_x_log10() +
  scale_y_log10() +
  scale_color_discrete(name="Region") +
  theme_bw()
```

### Solution

```{r, echo=F, warning=FALSE, out.width="70%", fig.align="center"}

```


## Problem 4-2 [4 points]

Create a barplot of NYC regent scores as we discussed during "Introduction to Data Visualization".

First, do the same as Problem 2-2 but by using `data.table` by following the below two steps.

* Convert the `nyc_regents_scores` data frame into a `data.table` by referencing. Explain the third line of the below code.

```{r, eval=FALSE, warning=FALSE, out.width="70%", fig.align="center"}
data(nyc_regents_scores)
FILL OUT HERE
nyc_regents_scores <- nyc_regents_scores[!is.na(score),]
```

* Calculate total frequency of each score by summing up the frequency of each subject (consider NA as 0 when summing up).

```{r, eval=FALSE, warning=FALSE, out.width="70%", fig.align="center"}
FILL OUT HERE
```

* Then, with the updated data, create a barplot of NYC regent scores as we discussed during "Introduction to Data Visualization". Denote x-axis label as "Score" and y-axis label as "Score Frequency". 

```{r, eval=FALSE, warning=FALSE, out.width="70%", fig.align="center"}
# Step 2: 
nyc_regents_scores |> 
  FILL OUT HERE +
  FILL OUT HERE +
  FILL OUT HERE + 
  FILL OUT HERE +
  annotate("text", x = 66, y = 28000, label = "MINIMUM\nREGENTS DIPLOMA\nSCORE IS 65", hjust = 0, size = 3) +
  annotate("text", x = 0, y = 12000, label = "2010 Regents scores on\nthe five most common tests", hjust = 0, size = 3) +
  theme_minimal()
```


### Solution

```{r, echo=F, warning=FALSE, out.width="70%", fig.align="center"}

```



## Problem 4-3 [3 points]

Using the provided code that generates a heatmap of reported Measles cases by year and state, modify it to create a heatmap of reported cases of Hepatitis A by year and state. Include a vertical line for the Hepatitis A vaccine introduction year, which is 1995, and update the plot title to Hepatitis A.

```{r, echo=T, out.width="90%", fig.align="center", message=FALSE, warning=FALSE}
data(us_contagious_diseases)
the_disease <- "Measles"
dat <- us_contagious_diseases |>
  filter(!state%in%c("Hawaii","Alaska") & disease == the_disease) |>
  mutate(rate = count / population * 100000 * 52 / weeks_reporting) |>
  mutate(state = reorder(state, rate))

jet.colors <-
  colorRampPalette(c("#F0FFFF", "cyan", "#007FFF", "yellow", "#FFBF00", "orange", "red", "#7F0000"), bias = 2.25)
the_breaks <- seq(0, 4000, 1000)
dat |> 
  ggplot(aes(x=year, y=state, fill = rate)) +
  geom_tile(color = "white", size=0.35) +
  scale_fill_gradientn(colors = jet.colors(16), na.value = 'white',
                       breaks = the_breaks, 
                       labels = paste0(round(the_breaks/1000),"k"),
                       limits = range(the_breaks),
                       name = "") +
  geom_vline(xintercept=1963, col = "black") +
  theme_minimal() + 
  theme(panel.grid = element_blank()) +
  coord_cartesian(clip = 'off') +
  ggtitle(the_disease) +
  ylab("") +
  xlab("") +  
  theme(legend.position = "bottom", text = element_text(size = 8)) + 
  annotate(geom = "text", x = 1963, y = 50.5, label = "Vaccine introduced", size = 3, hjust=0)
```

### Solution

```{r, echo=T, out.width="90%", fig.align="center", message=FALSE, warning=FALSE}

```


