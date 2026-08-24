# 🎯 Hands-on Workshop: Fundamental R Programming for Microbiological Data Analysis and Visualization

## 📅 Date: August 27th, 2026

## ⏰ Time: 08:30–11:30 WIB

## 👨‍🏫 Instructors

Zahra Noviana, Akhirta Atikana, Riki Ruhimat, Herjuno Ari Nugroho, Mukh Fajar Nasrulloh, Eko Darma Husada, Agung Adi Nugroho

## 👥 Participants

Staff of RC Applied Microbiology – BRIN

---

# 🌱 Welcome to the World of R for Microbiology!

Modern microbiology is increasingly becoming a data-driven science.

From laboratory measurements and microbial abundance data to microbiome and whole-genome sequencing studies, researchers are working with datasets that are increasingly large and complex.

**R** provides a powerful and reproducible way to work with these data.

However, learning R does not need to begin with complicated programming.

In this workshop, we will learn R through a simple microbiological dataset and one central biological question:

> **Does treatment appear to affect bacterial abundance?**

We will follow a simple workflow:

```text
Biological Question
        ↓
       Data
        ↓
   Inspect Data
        ↓
  Explore Data
        ↓
   Visualize Data
        ↓
 Statistical Test
        ↓
Biological Interpretation
```

The goal is **not** to memorize many R commands.

Instead, we want participants to understand how R can help answer biological questions.

---

# 🎯 Learning Objectives

By the end of this workshop, participants should be able to:

1. Understand the basic R and RStudio environment.
2. Import a microbiological CSV dataset into R.
3. Inspect the structure of a dataset.
4. Select and filter biological observations.
5. Calculate simple descriptive statistics.
6. Create basic scientific visualizations using `ggplot2`.
7. Compare two groups using a simple t-test.
8. Interpret statistical results in a biological context.
9. Understand the basic principles of reproducible analysis.

---

# ⏱️ Workshop Schedule

| Time        | Session                              | Duration |
| ----------- | ------------------------------------ | -------: |
| 08:45–09:00 | 1. Getting Started with R            |   15 min |
| 09:00–09:35 | 2. Working with Microbiological Data |   35 min |
| 09:35–10:00 | 3. Exploring Biological Data         |   25 min |
| 10:00–10:10 | ☕ Break                              |   10 min |
| 10:10–10:55 | 4. Data Visualization with `ggplot2` |   45 min |
| 10:55–11:15 | 5. Statistical Testing               |   20 min |
| 11:15–11:30 | 6. Biological Interpretation         |   15 min |

### Total Workshop Time

**165 minutes = 2 hours 45 minutes**

---

# 📋 Workshop Workflow

Throughout the workshop, we will work through the following workflow:

```text
                 BIOLOGICAL QUESTION
                         ↓
                       DATA
                         ↓
                  IMPORT DATA
                         ↓
                  INSPECT DATA
                         ↓
                  EXPLORE DATA
                         ↓
                 VISUALIZE DATA
                         ↓
                 STATISTICAL TEST
                         ↓
             BIOLOGICAL INTERPRETATION
```

---

# 💻 Before the Workshop: Preparation

To make the most of the hands-on session, please complete the following before attending the workshop.

## 1. Install R

Download R from:

https://cran.r-project.org/

Choose the appropriate installer for your operating system.

### Windows

Select:

```text
Download R for Windows
        ↓
base
        ↓
Download the latest R installer
```

### macOS

Select:

```text
Download R for macOS
```

Download the appropriate `.pkg` installer.

### Linux

Select:

```text
Download R for Linux
```

Choose your Linux distribution and follow the installation instructions.

---

# 🧑‍💻 2. Install RStudio

After installing R, download **RStudio Desktop** from Posit:

https://posit.co/download/rstudio-desktop/

Install RStudio using the default settings.

> ⚠️ **Important**
>
> R and RStudio are different.
>
> **R** is the programming language and statistical computing environment.
>
> **RStudio** is the development environment that makes working with R easier.
>
> You need both.

The order is:

```text
Install R
   ↓
Install RStudio
   ↓
Open RStudio
```

---

# 📁 3. Download the Workshop Materials

Before the workshop, download the workshop repository/materials.

The project should contain:

```text
R_Microbiology_Workshop/
│
├── data/
│
├── scripts/
│
├── figures/
│
└── results/
```

The `data/` directory will contain the microbiological dataset used during the workshop.

---

# 📦 4. Required R Package

We will use the `tidyverse` collection of R packages.

Open RStudio and run:

```r
install.packages("tidyverse")
```

Then test the installation:

```r
library(tidyverse)
```

If no error appears, the package is ready.

> 💡 You only need to install a package once.
>
> You need to load it with `library()` whenever you start a new R session and want to use it.

---

# 🧪 5. Quick Installation Check

Open RStudio.

In the Console, run:

```r
1 + 1
```

You should see:

```text
[1] 2
```

Then run:

```r
library(tidyverse)
```

If both commands work, your computer is ready for the workshop.

---

# 1️⃣ Getting Started with R

## ⏰ 08:45–09:00 — 15 minutes

Now that R and RStudio are ready, let's start using R.

---

## 🧑‍💻 1.1 The RStudio Environment

When you open RStudio, you will usually see several panels:

```text
┌─────────────────────┬──────────────────────┐
│                     │                      │
│   Source / Editor   │ Environment / Files  │
│                     │                      │
│                     │                      │
├─────────────────────┼──────────────────────┤
│                     │                      │
│      Console        │     Plots / Help     │
│                     │                      │
└─────────────────────┴──────────────────────┘
```

The most important panels for today are:

* **Source** — where we write our R scripts
* **Console** — where R executes commands
* **Environment** — where our objects appear
* **Plots** — where our graphs appear

---

# 📁 1.2 Create an R Project

An R Project keeps our analysis organized.

In RStudio, select:

```text
File
  ↓
New Project
  ↓
New Directory
  ↓
New Project
```

Name the project:

```text
R_Microbiology_Workshop
```

Choose a convenient location and create the project.

Our project will contain:

```text
R_Microbiology_Workshop/
├── data/
├── scripts/
├── figures/
└── results/
```

> 💡 An R Project helps R know where your files are located and keeps your analysis organized.

---

# 📝 1.3 Create an R Script

In RStudio:

```text
File
  ↓
New File
  ↓
R Script
```

Save the script as:

```text
01_getting_started.R
```

Save it inside:

```text
scripts/
```

---

# 🔢 1.4 Your First R Commands

Run:

```r
1 + 1
```

You should get:

```text
[1] 2
```

Try:

```r
10 * 5
```

and:

```r
100 / 4
```

R can perform calculations just like a calculator.

---

# 🧬 1.5 Creating Objects

R becomes much more useful when we store information in objects.

For example:

```r
sample_id <- "S01"

treatment <- "Control"

abundance <- 1250
```

We can inspect the objects:

```r
sample_id

treatment

abundance
```

The result should look like:

```text
[1] "S01"

[1] "Control"

[1] 1250
```

The symbol:

```text
<-
```

means:

> Store this value in an object.

For example:

```r
abundance <- 1250
```

means:

```text
1250
  ↓
abundance
```

---

# 🧠 1.6 A Simple R Mental Model

Think about R like this:

```text
Biological information
        ↓
      Objects
        ↓
     Functions
        ↓
      Results
```

For example:

```r
abundance <- 1250

mean(abundance)
```

The object stores information.

The function performs an operation.

---

# 🚀 Section 1 Complete

You have now:

* Opened RStudio
* Created an R Project
* Created an R script
* Run basic R commands
* Created simple R objects

Now let's work with an actual biological dataset.

---

# 2️⃣ Working with Microbiological Data

## ⏰ 09:00–09:35 — 35 minutes

We will now work with a simplified microbiological dataset.

The dataset contains information about:

* Sample identity
* Treatment
* Soil type
* Soil pH
* Soil moisture
* Bacterial abundance

---

# 🧬 2.1 Understanding the Dataset

Each **row** represents one sample.

Each **column** represents one variable.

For example:

| Sample | Treatment | Soil    |  pH | Moisture | Bacterial_Abundance |
| ------ | --------- | ------- | --: | -------: | ------------------: |
| S01    | Control   | Mineral | 5.2 |     35.4 |                1250 |
| S02    | Control   | Mineral | 5.4 |     37.1 |                1430 |
| S03    | Control   | Peat    | 4.8 |     62.3 |                 980 |
| S04    | Treatment | Mineral | 6.1 |     40.2 |                1890 |
| S05    | Treatment | Peat    | 5.0 |     65.1 |                2100 |
| S06    | Treatment | Peat    | 5.3 |     63.8 |                2250 |

We can think of the dataset as:

```text
Rows
 ↓
Samples

Columns
 ↓
Variables

Cells
 ↓
Individual observations
```

---

# 📥 2.2 Import the Dataset

Our CSV file is:

```text
microbiology_data.csv
```

It should be located inside:

```text
data/
```

Import it using:

```r
data <- read.csv("data/microbiology_data.csv")
```

The dataset is now stored in an R object called:

```text
data
```

Alternative script:

```r
# Create microbiological sample data

microbiology_data <- data.frame(
  Sample = c("S01", "S02", "S03", "S04", "S05", "S06"),
  Treatment = c(
    "Control",
    "Control",
    "Control",
    "Treatment",
    "Treatment",
    "Treatment"
  ),
  Soil = c(
    "Mineral",
    "Mineral",
    "Peat",
    "Mineral",
    "Peat",
    "Peat"
  ),
  pH = c(5.2, 5.4, 4.8, 6.1, 5.0, 5.3),
  Moisture = c(35.4, 37.1, 62.3, 40.2, 65.1, 63.8),
  Bacterial_Abundance = c(
    1250,
    1430,
    980,
    1890,
    2100,
    2250
  )
)

# View the data
microbiology_data

# Save as CSV
write.csv(
  microbiology_data,
  "data/microbiology_data.csv",
  row.names = FALSE
)

```

---

# 👀 2.3 Look at the Data

Let's see the first few rows:

```r
head(data)
```

We can also see the last few rows:

```r
tail(data)
```

---

# 📐 2.4 How Large Is the Dataset?

Run:

```r
dim(data)
```

The result tells us:

```text
number of rows
number of columns
```

For example:

```text
[1] 20 6
```

means:

```text
20 samples
6 variables
```

---

# 🏷️ 2.5 What Are the Column Names?

Run:

```r
names(data)
```

You should see something similar to:

```text
[1] "Sample"
[2] "Treatment"
[3] "Soil"
[4] "pH"
[5] "Moisture"
[6] "Bacterial_Abundance"
```

---

# 🔍 2.6 Understand the Data Structure

One of the most useful functions for beginners is:

```r
str(data)
```

This tells us:

* Variable names
* Data types
* Number of observations
* Example values

For example:

```text
Sample               → character
Treatment            → character
Soil                 → character
pH                   → numeric
Moisture             → numeric
Bacterial_Abundance  → numeric
```

---

# 📊 2.7 Get a Quick Summary

Run:

```r
summary(data)
```

For numeric variables, R provides:

* Minimum
* 1st quartile
* Median
* Mean
* 3rd quartile
* Maximum

This gives us a quick overview of the dataset.

---

# 🎯 2.8 Selecting a Variable

We can access a column using `$`.

For example:

```r
data$Bacterial_Abundance
```

This returns the bacterial abundance values.

We can calculate the mean:

```r
mean(data$Bacterial_Abundance)
```

And the standard deviation:

```r
sd(data$Bacterial_Abundance)
```

---

# 🔎 2.9 Filtering Samples

Now let's use `dplyr`.

Make sure `tidyverse` is loaded:

```r
library(tidyverse)
```

Suppose we only want the Treatment samples:

```r
data %>%
  filter(Treatment == "Treatment")
```

We can also select Peat samples:

```r
data %>%
  filter(Soil == "Peat")
```

We can combine conditions:

```r
data %>%
  filter(
    Treatment == "Treatment",
    Soil == "Peat"
  )
```

This allows us to ask biological questions about specific groups of samples.

---

# 🧠 2.10 What Did We Learn?

We have learned how to:

```text
Import
  ↓
Inspect
  ↓
Understand
  ↓
Filter
  ↓
Summarize
```

These are some of the most fundamental operations in data analysis.

---


# 🚀 Section 2 Complete

We can now:

* Import a CSV
* Inspect data
* Understand rows and columns
* Check data structure
* Select variables
* Filter samples
* Calculate summary statistics

Now let's explore the data visually.

---

# 3️⃣ Exploring Biological Data

## ⏰ 09:35–10:00 — 25 minutes

Before performing a statistical test, we should first understand what the data look like.

We want to know:

* What is the typical value?
* How variable are the samples?
* Do groups appear different?
* Are there unusual observations?

This is called:

> **Exploratory Data Analysis (EDA)**

---

# 📏 3.1 Mean

The mean is the average value.

Run:

```r
mean(
  data$Bacterial_Abundance,
  na.rm = TRUE
)
```

---

# 📍 3.2 Median

The median is the middle value when observations are ordered.

Run:

```r
median(
  data$Bacterial_Abundance,
  na.rm = TRUE
)
```

---

# 📐 3.3 Standard Deviation

The standard deviation describes variation around the mean.

Run:

```r
sd(
  data$Bacterial_Abundance,
  na.rm = TRUE
)
```

Think of it as:

```text
Mean
 ↓
Typical value

SD
 ↓
How variable are the observations?
```

---

# 🔬 3.4 Compare Treatment Groups

Let's calculate both mean and standard deviation:

```r
data %>%
  group_by(Treatment) %>%
  summarise(
    mean_abundance = mean(
      Bacterial_Abundance,
      na.rm = TRUE
    ),
    sd_abundance = sd(
      Bacterial_Abundance,
      na.rm = TRUE
    )
  )
```

Now ask:

> **Does the Treatment group appear to have higher bacterial abundance?**

Remember:

```text
Observed difference
        ≠
Statistical evidence
```

We are only describing what we see at this stage.

---

# 🔎 3.5 Why Explore Before Testing?

Imagine that we immediately run a statistical test without looking at the data.

We might miss:

* An unusual sample
* Very high variation
* An unexpected distribution
* A data-entry error
* A missing value
* An unexpected group structure

Therefore:

> **Explore first. Test second.**

---

# ☕ BREAK

## ⏰ 10:00–10:10 — 10 minutes

Take a short break.

When we return, we will turn our data into scientific figures using `ggplot2`.

---

# 4️⃣ Data Visualization with `ggplot2`

## ⏰ 10:10–10:55 — 45 minutes

Visualization is one of the most useful skills for working with biological data.

Instead of looking only at numbers, we can use graphs to see:

* Differences between groups
* Variation between samples
* Distributions
* Relationships between variables

For this workshop, we will focus on three basic plots:

1. Boxplot
2. Histogram
3. Scatter plot

---

# 🎨 4.1 Load `ggplot2`

`ggplot2` is included in the `tidyverse`.

Run:

```r
library(tidyverse)
```

---

# 🧩 4.2 Basic `ggplot2` Structure

A basic plot looks like:

```r
ggplot(data, aes(...)) +
  geom_*
```

Think of it as:

```text
Data
 ↓
Variables
 ↓
Geometry
 ↓
Plot
```

---

# 📦 4.3 Boxplot: Compare Groups

Our first visualization is a boxplot.

```r
ggplot(
  data,
  aes(
    x = Treatment,
    y = Bacterial_Abundance
  )
) +
  geom_boxplot()
```

The boxplot helps us see:

* Median
* Distribution
* Variation
* Potential unusual observations

---

# 🧬 4.4 Show Individual Samples

For microbiological data, it is often useful to show the individual observations.

Add:

```r
geom_jitter()
```

Complete plot:

```r
ggplot(
  data,
  aes(
    x = Treatment,
    y = Bacterial_Abundance
  )
) +
  geom_boxplot() +
  geom_jitter(
    width = 0.15
  )
```

Now we can see both:

```text
Summary of the distribution
        +
Individual samples
```

This is particularly useful when the number of biological replicates is small.

---

# 🏷️ 4.5 Add Labels

A scientific figure should be understandable.

We can add labels:

```r
ggplot(
  data,
  aes(
    x = Treatment,
    y = Bacterial_Abundance
  )
) +
  geom_boxplot() +
  geom_jitter(
    width = 0.15
  ) +
  labs(
    title = "Bacterial Abundance by Treatment",
    x = "Treatment",
    y = "Bacterial Abundance"
  )
```

---

# ✨ 4.6 Use a Simple Scientific Theme

We can use:

```r
theme_classic()
```

Complete version:

```r
ggplot(
  data,
  aes(
    x = Treatment,
    y = Bacterial_Abundance
  )
) +
  geom_boxplot() +
  geom_jitter(
    width = 0.15
  ) +
  labs(
    title = "Bacterial Abundance by Treatment",
    x = "Treatment",
    y = "Bacterial Abundance"
  ) +
  theme_classic()
```

> 💡 Keep scientific figures simple.
>
> The purpose of a figure is to communicate biological information clearly.

---

# 📊 4.7 Histogram: Explore a Distribution

A histogram shows how values are distributed.

```r
ggplot(
  data,
  aes(
    x = Bacterial_Abundance
  )
) +
  geom_histogram(
    bins = 4
  ) +
  theme_classic()
```

A histogram can help us see:

* Where observations are concentrated
* The range of values
* The general shape of the distribution
* Potential unusual observations

---

# 🔗 4.8 Scatter Plot: Explore Relationships

Now let's ask another question:

> **Is soil moisture related to bacterial abundance?**

Create a scatter plot:

```r
ggplot(
  data,
  aes(
    x = Moisture,
    y = Bacterial_Abundance
  )
) +
  geom_point() +
  theme_classic()
```

Each point represents one sample.

---

# 🎨 4.9 Add Biological Information with Color

We can use color to represent treatment.

```r
ggplot(
  data,
  aes(
    x = Moisture,
    y = Bacterial_Abundance,
    color = Treatment
  )
) +
  geom_point() +
  theme_classic()
```

Now:

```text
x-axis
 ↓
Moisture

y-axis
 ↓
Bacterial abundance

color
 ↓
Treatment
```

This is one of the most useful ideas in `ggplot2`:

> **Variables can control visual properties.**

---

# 📈 4.10 Optional: Add a Trend Line

We can add a simple trend line:

```r
ggplot(
  data,
  aes(
    x = Moisture,
    y = Bacterial_Abundance
  )
) +
  geom_point() +
  geom_smooth(
    method = "lm"
  ) +
  theme_classic()
```

The line represents a fitted linear relationship.

> ⚠️ A trend line does not prove causation.

```
model <- lm(
  Bacterial_Abundance ~ Moisture,
  data = data
)

summary(model)
```

---

# 💾 4.11 Save a Figure

We can save a figure using `ggsave()`.

First, store the plot:

```r
p <- ggplot(
  data,
  aes(
    x = Treatment,
    y = Bacterial_Abundance
  )
) +
  geom_boxplot() +
  geom_jitter(
    width = 0.15
  ) +
  labs(
    x = "Treatment",
    y = "Bacterial Abundance"
  ) +
  theme_classic()
```

Display it:

```r
p
```

Save it:

```r
ggsave(
  "figures/bacterial_abundance_treatment.png",
  plot = p,
  width = 6,
  height = 4,
  dpi = 300
)
```

The figure will be saved in:

```text
figures/
└── bacterial_abundance_treatment.png
```

---

# 🧪 Hands-on Challenge 1

For this challenge, we will work with a **different microbiological dataset**.

Instead of soil, treatment, moisture, and bacterial abundance, we will explore a simple bacterial growth experiment using:

* Carbon source
* Growth time
* Optical density (`OD600`)
* Viable cell count (`CFU_mL`)

First, create the dataset manually:

```r
challenge_data <- data.frame(
  Sample = c(
    "G01", "G02", "G03",
    "G04", "G05", "G06",
    "G07", "G08", "G09",
    "G10", "G11", "G12"
  ),
  Carbon_Source = c(
    "Glucose", "Glucose", "Glucose",
    "Glucose", "Glucose", "Glucose",
    "Acetate", "Acetate", "Acetate",
    "Acetate", "Acetate", "Acetate"
  ),
  Time_h = c(
    0, 2, 4, 6, 8, 10,
    0, 2, 4, 6, 8, 10
  ),
  OD600 = c(
    0.05, 0.12, 0.31, 0.68, 1.12, 1.48,
    0.05, 0.08, 0.15, 0.27, 0.44, 0.63
  ),
  CFU_mL = c(
    1.2e6, 2.4e6, 6.8e6,
    1.5e7, 3.1e7, 4.2e7,
    1.1e6, 1.6e6, 3.2e6,
    6.1e6, 1.1e7, 1.8e7
  )
)

challenge_data
```

---

## Challenge A — Growth Curve

Plot bacterial growth over time.

```r
ggplot(
  challenge_data,
  aes(
    x = Time_h,
    y = OD600,
    color = Carbon_Source
  )
) +
  geom_point(
    size = 3
  ) +
  geom_line() +
  labs(
    title = "Bacterial Growth Under Different Carbon Sources",
    x = "Time (hours)",
    y = "Optical Density (OD600)"
  ) +
  theme_classic()
```

Ask:

> **Which carbon source appears to support faster bacterial growth?**

---

## Challenge B — CFU Distribution

Compare viable bacterial counts between carbon sources.

```r
ggplot(
  challenge_data,
  aes(
    x = Carbon_Source,
    y = CFU_mL,
    fill = Carbon_Source
  )
) +
  geom_boxplot(
    alpha = 0.7
  ) +
  geom_jitter(
    width = 0.12,
    size = 2
  ) +
  scale_y_log10() +
  labs(
    title = "Viable Bacterial Counts",
    x = "Carbon Source",
    y = "CFU/mL"
  ) +
  theme_classic()
```

Ask:

> **Which carbon source is associated with higher viable bacterial counts?**

---

## Challenge C — OD600 and CFU Relationship

Explore whether optical density reflects viable cell numbers.

```r
ggplot(
  challenge_data,
  aes(
    x = OD600,
    y = CFU_mL,
    color = Carbon_Source
  )
) +
  geom_point(
    size = 3
  ) +
  geom_smooth(
    method = "lm",
    se = FALSE
  ) +
  scale_y_log10() +
  labs(
    title = "Relationship Between OD600 and Viable Cell Count",
    x = "Optical Density (OD600)",
    y = "CFU/mL"
  ) +
  theme_classic()
```

Ask:

> **Does OD600 appear to be associated with viable bacterial cell numbers?**

---

## 🧠 Challenge Questions

After creating all three plots, discuss:

1. **Which carbon source appears to support faster growth?**
2. **Which carbon source has higher viable cell counts?**
3. **Does OD600 appear to increase with CFU/mL?**
4. **Why might OD600 and CFU/mL not always show exactly the same pattern?**
5. **Which plot best describes bacterial growth over time?**

> 💡 **Remember:** OD600 measures optical density, whereas CFU/mL estimates viable culturable cells. These measurements describe different aspects of bacterial growth and may not always change proportionally.
> 
---

# 🧠 4.11 Choosing the Right Plot

A useful rule of thumb:

| Question                              | Plot            |
| ------------------------------------- | --------------- |
| What does the distribution look like? | Histogram       |
| How do groups differ?                 | Boxplot         |
| Where are individual observations?    | Jitter / points |
| Are two continuous variables related? | Scatter plot    |

The important question is not:

> "Which plot looks nice?"

Instead ask:

> **"Which plot best answers my biological question?"**

---

# 🚀 Section 4 Complete

You can now use `ggplot2` to:

* Create boxplots
* Show individual samples
* Create histograms
* Create scatter plots
* Map variables to color
* Add labels
* Apply a simple scientific theme
* Save figures

Now let's ask whether the observed group difference has statistical support.

---

# 5️⃣ Statistical Testing

## ⏰ 10:55–11:15 — 20 minutes

We have observed that bacterial abundance may differ between treatments.

Now we ask:

> **Is there statistical evidence for a difference?**

---

# 🧪 5.1 Biological Question

Our question is:

> **Does bacterial abundance differ between Control and Treatment samples?**

We can formulate:

### Null hypothesis

```text
H₀:

There is no difference in bacterial abundance
between Control and Treatment.
```

### Alternative hypothesis

```text
H₁:

Bacterial abundance differs between
Control and Treatment.
```

---

# 📊 5.2 Compare Two Groups with a t-test

Because we have two groups, we can introduce a simple t-test.

Run:

```r
test_result <- t.test(
  Bacterial_Abundance ~ Treatment,
  data = data
)
```

Display the result:

```r
test_result
```

---

# 🔎 5.3 Look at the p-value

We can extract the p-value:

```r
test_result$p.value
```

A commonly used threshold is:

```text
p < 0.05
```

For this introductory workshop, use the simplified interpretation:

```text
p < 0.05
    ↓
Evidence against the null hypothesis

p ≥ 0.05
    ↓
Insufficient evidence to reject the null hypothesis
```

> ⚠️ Important:
>
> A p-value greater than or equal to 0.05 does **not** prove that there is no biological difference.
>
> It means that the data do not provide sufficient evidence to reject the null hypothesis under the chosen test.

---

# 🧠 5.4 Statistical Significance Is Not Biological Importance

Suppose we obtain:

```text
p = 0.001
```

This provides strong statistical evidence against the null hypothesis.

But that does not automatically mean:

> "The biological effect is very large."

We should consider:

```text
Statistical evidence
        +
Magnitude of difference
        +
Biological context
```

Similarly, a biologically interesting difference may not reach statistical significance if:

* Sample size is small
* Biological variation is high
* Measurement variation is high

---

# ⚠️ 5.5 Correlation and Other Tests

There are many other statistical approaches in microbiological research.

For example:

| Biological question                       | Possible method                |
| ----------------------------------------- | ------------------------------ |
| Compare two groups                        | t-test                         |
| Compare more than two groups              | ANOVA                          |
| Paired measurements                       | Paired t-test                  |
| Relationship between continuous variables | Correlation                    |
| Microbial community differences           | PERMANOVA                      |
| Differential microbial taxa               | Differential abundance methods |

We will **not** cover these methods in detail today.

The important principle is:

> **Choose a statistical method based on the biological question and experimental design.**

---

# 🧪 Hands-on Challenge 2

Run:

```r
test_result <- t.test(
  Bacterial_Abundance ~ Treatment,
  data = data
)
```

Then:

```r
test_result
```

Then:

```r
test_result$p.value
```

Now combine the statistical result with your boxplot.

Ask yourself:

1. Which group has higher bacterial abundance?
2. How large does the difference appear to be?
3. What is the p-value?
4. What does the statistical test suggest?
5. What can we reasonably conclude?

---

# 🚀 Section 5 Complete

We have now moved from:

```text
"I can see a difference."
```

to:

```text
"Is there statistical evidence for the difference?"
```

Now we need to connect the result back to biology.

---

# 6️⃣ From Statistical Results to Biological Interpretation

## ⏰ 11:15–11:30 — 15 minutes

Statistical output is not the final result.

The final step is:

> **What does the result mean biologically?**

---

# 🧬 6.1 Start With the Observation

First describe what you actually observed.

For example:

> Bacterial abundance was higher in the Treatment group than in the Control group.

This statement describes the observed dataset.

---

# 📊 6.2 Add the Statistical Evidence

Next consider the statistical test.

For example:

> Bacterial abundance was higher in the Treatment group than in the Control group, and the t-test provided statistical evidence for a difference between the groups.

If reporting an exact value:

> Bacterial abundance was higher in the Treatment group than in the Control group (t-test, p = ...).

The exact value should always come from your actual analysis.

> ⚠️ Never invent a p-value or statistical result.

---

# 🔬 6.3 Match the Strength of the Conclusion to the Evidence

Compare:

### Too strong

> The treatment increases bacterial abundance.

### More cautious

> Bacterial abundance was higher in the Treatment group.

The second statement is safer because it describes the observed result without automatically claiming causation.

A useful principle is:

> **Match the strength of your conclusion to the strength of your evidence.**

---

# 🔗 6.4 Correlation Does Not Mean Causation

If our scatter plot shows:

```text
Moisture ↑
     ↓
Bacterial abundance ↑
```

we might observe a positive association.

But we should not automatically conclude:

> Higher moisture causes higher bacterial abundance.

Other biological or environmental factors may influence both variables.

Therefore:

> **Correlation describes association, not necessarily causation.**

---

# 🧠 6.5 A Simple Interpretation Framework

Whenever you analyze biological data, ask five questions:

### 1. What did we observe?

Describe the pattern.

### 2. How large is the difference?

Consider the magnitude.

### 3. What does the statistical test tell us?

Consider the statistical evidence.

### 4. Is the result biologically meaningful?

Consider the biological context.

### 5. What can we reasonably conclude?

Make a conclusion that matches the evidence.

The framework is:

```text
Observation
    ↓
Magnitude
    ↓
Statistical evidence
    ↓
Biological relevance
    ↓
Conclusion
```

---

# 🧪 Final Hands-on Challenge

Let's answer our original question:

> **Does treatment appear to affect bacterial abundance?**

Use the following workflow.

---

## Step 1 — Inspect the data

```r
head(data)

str(data)

summary(data)
```

---

## Step 2 — Calculate group summaries

```r
data %>%
  group_by(Treatment) %>%
  summarise(
    mean_abundance = mean(
      Bacterial_Abundance,
      na.rm = TRUE
    ),
    sd_abundance = sd(
      Bacterial_Abundance,
      na.rm = TRUE
    )
  )
```

---

## Step 3 — Visualize the groups

```r
ggplot(
  data,
  aes(
    x = Treatment,
    y = Bacterial_Abundance
  )
) +
  geom_boxplot() +
  geom_jitter(
    width = 0.15
  ) +
  labs(
    title = "Bacterial Abundance by Treatment",
    x = "Treatment",
    y = "Bacterial Abundance"
  ) +
  theme_classic()
```

---

## Step 4 — Perform the t-test

```r
test_result <- t.test(
  Bacterial_Abundance ~ Treatment,
  data = data
)

test_result
```

---

## Step 5 — Interpret the result

Complete the following:

```text
Bacterial abundance was __________ in the Treatment
group compared with the Control group.

The statistical test gave a p-value of __________.

Therefore, the data provide __________ evidence for
a difference between the groups.

Biologically, this suggests that __________.
```

---

# 🎯 The Complete Workflow

Congratulations — we have now completed a simple R-based microbiological analysis.

Our workflow was:

```text
              BIOLOGICAL QUESTION
                       ↓
                      DATA
                       ↓
                IMPORT DATA
                       ↓
                INSPECT DATA
                       ↓
               SUMMARIZE DATA
                       ↓
              EXPLORE PATTERNS
                       ↓
               VISUALIZE DATA
                       ↓
              STATISTICAL TEST
                       ↓
          BIOLOGICAL INTERPRETATION
```

This workflow is more important than memorizing individual R commands.

---

# 🧬 From Simple Data to Microbiome Data

The dataset we used today is intentionally simple.

Real microbiological datasets can be much more complicated.

For example:

```text
Today
Simple biological measurements
        ↓
Treatment
Soil
pH
Moisture
Bacterial abundance
```

Later, we may work with:

```text
Microbiome data
        ↓
ASVs
        ↓
Taxonomy
        ↓
Alpha diversity
        ↓
Beta diversity
        ↓
Differential abundance
```

And eventually:

```text
Sequencing reads
        ↓
Quality control
        ↓
Taxonomic / genomic information
        ↓
Biological interpretation
```

The datasets become more complex.

But the basic analytical thinking remains:

```text
Ask
 ↓
Organize
 ↓
Explore
 ↓
Visualize
 ↓
Analyze
 ↓
Interpret
```

---

# 🔬 Connection to the GEMA Workshop Series

This workshop is the foundation for the following workshops.

```text
┌─────────────────────────────────────────────┐
│ Workshop 1                                  │
│ Fundamental R Programming                   │
│                                             │
│ Data → Explore → Visualize → Statistics     │
└──────────────────────┬──────────────────────┘
                       ↓
┌─────────────────────────────────────────────┐
│ Workshop 2                                  │
│ Exploring Microbiomes Using                │
│ Short-Read Sequencing Data                  │
└──────────────────────┬──────────────────────┘
                       ↓
┌─────────────────────────────────────────────┐
│ Workshop 3                                  │
│ Exploring Microbiomes Using                │
│ Long-Read Sequencing Data                   │
└──────────────────────┬──────────────────────┘
                       ↓
┌─────────────────────────────────────────────┐
│ Workshop 4                                  │
│ Microbial Whole-Genome Sequencing Analysis  │
└─────────────────────────────────────────────┘
```

The purpose of Workshop 1 is **not** to teach microbiome analysis.

Instead, it provides the R foundation participants need to understand and manipulate the tables, metadata, visualizations, and statistical results they will encounter in the following workshops.

---

# 🧠 Key Takeaways

Today we learned that R can help us:

```text
Organize Data
      ↓
Explore Data
      ↓
Visualize Data
      ↓
Test Questions
      ↓
Interpret Results
```

We also learned several important R functions:

| Function           | Purpose                      |
| ------------------ | ---------------------------- |
| `read.csv()`       | Import CSV data              |
| `head()`           | View first rows              |
| `dim()`            | Check dimensions             |
| `names()`          | View column names            |
| `str()`            | Inspect data structure       |
| `summary()`        | Summarize data               |
| `mean()`           | Calculate mean               |
| `sd()`             | Calculate standard deviation |
| `filter()`         | Select observations          |
| `group_by()`       | Group observations           |
| `summarise()`      | Calculate summaries          |
| `ggplot()`         | Create visualizations        |
| `geom_boxplot()`   | Create boxplots              |
| `geom_histogram()` | Create histograms            |
| `geom_point()`     | Create scatter plots         |
| `t.test()`         | Compare two groups           |

You do **not** need to memorize all of these today.

The goal is to understand what these functions do and how they fit into an analytical workflow.

---

# 🔁 Reproducibility

One of the most important advantages of R is reproducibility.

Instead of manually calculating numbers and creating figures, we write code.

For example:

```r
data %>%
  group_by(Treatment) %>%
  summarise(
    mean_abundance = mean(
      Bacterial_Abundance,
      na.rm = TRUE
    )
  )
```

The same analysis can be:

```text
Repeated
    ↓
Checked
    ↓
Modified
    ↓
Shared
    ↓
Reproduced
```

This becomes increasingly important as datasets become larger and more complex.

---

# 📁 Recommended Project Structure

For today's workshop:

```text
R_Microbiology_Workshop/
│
├── data/
│   └── microbiology_data.csv
│
├── scripts/
│   └── 01_getting_started.R
│
├── figures/
│
└── results/
```

For a real research project, the structure can be expanded:

```text
project/
│
├── data/
├── metadata/
├── scripts/
├── figures/
├── tables/
├── results/
└── README.md
```

The exact structure may vary.

The important principle is:

> **Keep your data, code, figures, and results organized.**

---

# 🎉 Workshop Complete!

Congratulations!

You have completed:

# **Fundamental R Programming for Microbiological Data Analysis and Visualization**

You have now learned how to:

* Start working with R and RStudio
* Create an R Project
* Import microbiological data
* Inspect datasets
* Filter samples
* Calculate descriptive statistics
* Visualize biological data
* Compare two groups
* Perform a basic statistical test
* Interpret results biologically
* Think about reproducible analysis

---

# 🌱 The Most Important Lesson

You do not need to memorize hundreds of R commands.

Instead:

> **Start with a biological question, understand your data, and then use R to help answer the question.**

The workflow is:

```text
BIOLOGICAL QUESTION
        ↓
      DATA
        ↓
    EXPLORE
        ↓
   VISUALIZE
        ↓
     TEST
        ↓
   INTERPRET
```

---

# 🚀 See You in the Next GEMA Workshop!

## Workshop 2 — Exploring Microbiomes Using Short-Read Sequencing Data

In the next workshop, we will move from simple microbiological tables to sequencing data.

The workflow will become:

```text
Sequencing Reads
       ↓
Quality Control
       ↓
ASVs / Features
       ↓
Taxonomy
       ↓
Alpha Diversity
       ↓
Beta Diversity
       ↓
Statistical Analysis
       ↓
Biological Interpretation
```

The data will become more complex.

But the fundamental principles remain:

```text
Organize
   ↓
Explore
   ↓
Visualize
   ↓
Analyze
   ↓
Interpret
```

---

# 🦠🧬📊 Thank You!

**See you in the next GEMA Workshop!**
