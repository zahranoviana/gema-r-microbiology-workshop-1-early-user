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

In this workshop, we will learn R through microbiological datasets and biological questions.

The goal is **not** to memorize many R commands.

Instead, we want participants to understand how R can help answer biological questions.

We will follow a simple workflow:

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

| Time | Session | Duration |
| --- | --- | ---: |
| 08:45–09:00 | 1. Getting Started with R | 15 min |
| 09:00–09:35 | 2. Working with Microbiological Data | 35 min |
| 09:35–10:00 | 3. Exploring Biological Data | 25 min |
| 10:00–10:10 | ☕ Break | 10 min |
| 10:10–10:55 | 4. Data Visualization with `ggplot2` | 45 min |
| 10:55–11:15 | 5. Statistical Testing | 20 min |
| 11:15–11:30 | 6. Biological Interpretation | 15 min |

### Total Workshop Time

**165 minutes = 2 hours 45 minutes**

---

# 📋 Workshop Workflow

Throughout the workshop, we will work through the following workflow:

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

---

# 💻 Before the Workshop: Preparation

To make the most of the hands-on session, please complete the following before attending the workshop.

## 1. Install R

Download R from:

https://cran.r-project.org/

Choose the appropriate installer for your operating system.

### Windows

Select:

    Download R for Windows
            ↓
          base
            ↓
    Download the latest R installer

### macOS

Select:

    Download R for macOS

Download the appropriate `.pkg` installer.

### Linux

Select:

    Download R for Linux

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

    Install R
       ↓
    Install RStudio
       ↓
    Open RStudio

---

# 📁 3. Download the Workshop Materials

Before the workshop, download the workshop repository/materials.

The project should contain:

    R_Microbiology_Workshop/
    │
    ├── data/
    │
    ├── scripts/
    │
    ├── figures/
    │
    └── results/

The `data/` directory will contain the microbiological datasets used during the workshop.

---

# 📦 4. Required R Package

We will use the `tidyverse` collection of R packages.

Open RStudio and run:

    install.packages("tidyverse")

Then test the installation:

    library(tidyverse)

If no error appears, the package is ready.

> 💡 You only need to install a package once.
>
> You need to load it with `library()` whenever you start a new R session and want to use it.

---

# 🧪 5. Quick Installation Check

Open RStudio.

In the Console, run:

    1 + 1

You should see:

    [1] 2

Then run:

    library(tidyverse)

If both commands work, your computer is ready for the workshop.

---

# 1️⃣ Getting Started with R

## ⏰ 08:45–09:00 — 15 minutes

Now that R and RStudio are ready, let's start using R.

---

## 🧑‍💻 1.1 The RStudio Environment

When you open RStudio, you will usually see several panels:

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

The most important panels for today are:

* **Source** — where we write our R scripts
* **Console** — where R executes commands
* **Environment** — where our objects appear
* **Plots** — where our graphs appear

---

# 📁 1.2 Create an R Project

An R Project keeps our analysis organized.

In RStudio, select:

    File
      ↓
    New Project
      ↓
    New Directory
      ↓
    New Project

Name the project:

    R_Microbiology_Workshop

Choose a convenient location and create the project.

Our project will contain:

    R_Microbiology_Workshop/
    ├── data/
    ├── scripts/
    ├── figures/
    └── results/

> 💡 An R Project helps R know where your files are located and keeps your analysis organized.

---

# 📝 1.3 Create an R Script

In RStudio:

    File
      ↓
    New File
      ↓
    R Script

Save the script as:

    01_getting_started.R

Save it inside:

    scripts/

---

# 🔢 1.4 Your First R Commands

Run:

    1 + 1

You should get:

    [1] 2

Try:

    10 * 5

and:

    100 / 4

R can perform calculations just like a calculator.

---

# 🧬 1.5 Creating Objects

R becomes much more useful when we store information in objects.

For example:

    sample_id <- "S01"

    treatment <- "Control"

    abundance <- 1250

We can inspect the objects:

    sample_id

    treatment

    abundance

The result should look like:

    [1] "S01"

    [1] "Control"

    [1] 1250

The symbol:

    <-

means:

> Store this value in an object.

For example:

    abundance <- 1250

means:

    1250
      ↓
    abundance

---

# 🧠 1.6 A Simple R Mental Model

Think about R like this:

    Biological information
            ↓
          Objects
            ↓
         Functions
            ↓
          Results

For example:

    abundance <- 1250

    mean(abundance)

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

Now let's work with actual biological datasets.

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

| Sample | Treatment | Soil | pH | Moisture | Bacterial_Abundance |
| --- | --- | --- | ---: | ---: | ---: |
| S01 | Control | Mineral | 5.2 | 35.4 | 1250 |
| S02 | Control | Mineral | 5.4 | 37.1 | 1430 |
| S03 | Control | Peat | 4.8 | 62.3 | 980 |
| S04 | Treatment | Mineral | 6.1 | 40.2 | 1890 |
| S05 | Treatment | Peat | 5.0 | 65.1 | 2100 |
| S06 | Treatment | Peat | 5.3 | 63.8 | 2250 |

We can think of the dataset as:

    Rows
     ↓
    Samples

    Columns
     ↓
    Variables

    Cells
     ↓
    Individual observations

---

# 📥 2.2 Import the Dataset

Our CSV file is:

    microbiology_data.csv

It should be located inside:

    data/

Import it using:

    data <- read.csv("data/microbiology_data.csv")

The dataset is now stored in an R object called:

    data

### Alternative: Create the Dataset Manually

If the CSV file is not available, we can create a small dataset directly in R:

    microbiology_data <- data.frame(
      Sample = c(
        "S01", "S02", "S03", "S04", "S05", "S06"
      ),
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
      pH = c(
        5.2, 5.4, 4.8, 6.1, 5.0, 5.3
      ),
      Moisture = c(
        35.4, 37.1, 62.3, 40.2, 65.1, 63.8
      ),
      Bacterial_Abundance = c(
        1250,
        1430,
        980,
        1890,
        2100,
        2250
      )
    )

    microbiology_data

    write.csv(
      microbiology_data,
      "data/microbiology_data.csv",
      row.names = FALSE
    )

For the remainder of this section, you can use:

    data <- microbiology_data

---

# 👀 2.3 Look at the Data

Let's see the first few rows:

    head(data)

We can also see the last few rows:

    tail(data)

---

# 📐 2.4 How Large Is the Dataset?

Run:

    dim(data)

The result tells us:

    number of rows
    number of columns

For example:

    [1] 20 6

means:

    20 samples
    6 variables

---

# 🏷️ 2.5 What Are the Column Names?

Run:

    names(data)

You should see something similar to:

    [1] "Sample"
    [2] "Treatment"
    [3] "Soil"
    [4] "pH"
    [5] "Moisture"
    [6] "Bacterial_Abundance"

---

# 🔍 2.6 Understand the Data Structure

One of the most useful functions for beginners is:

    str(data)

This tells us:

* Variable names
* Data types
* Number of observations
* Example values

For example:

    Sample               → character
    Treatment            → character
    Soil                 → character
    pH                   → numeric
    Moisture             → numeric
    Bacterial_Abundance  → numeric

---

# 📊 2.7 Get a Quick Summary

Run:

    summary(data)

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

    data$Bacterial_Abundance

This returns the bacterial abundance values.

We can calculate the mean:

    mean(data$Bacterial_Abundance)

And the standard deviation:

    sd(data$Bacterial_Abundance)

---

# 🔎 2.9 Filtering Samples

Now let's use `dplyr`.

Make sure `tidyverse` is loaded:

    library(tidyverse)

Suppose we only want the Treatment samples:

    data %>%
      filter(Treatment == "Treatment")

We can also select Peat samples:

    data %>%
      filter(Soil == "Peat")

We can combine conditions:

    data %>%
      filter(
        Treatment == "Treatment",
        Soil == "Peat"
      )

This allows us to ask biological questions about specific groups of samples.

---

# 🧠 2.10 What Did We Learn?

We have learned how to:

    Import
      ↓
    Inspect
      ↓
    Understand
      ↓
    Filter
      ↓
    Summarize

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

    mean(
      data$Bacterial_Abundance,
      na.rm = TRUE
    )

---

# 📍 3.2 Median

The median is the middle value when observations are ordered.

Run:

    median(
      data$Bacterial_Abundance,
      na.rm = TRUE
    )

---

# 📐 3.3 Standard Deviation

The standard deviation describes variation around the mean.

Run:

    sd(
      data$Bacterial_Abundance,
      na.rm = TRUE
    )

Think of it as:

    Mean
     ↓
    Typical value

    SD
     ↓
    How variable are the observations?

---

# 🔬 3.4 Compare Treatment Groups

Let's calculate both mean and standard deviation:

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

Now ask:

> **Does the Treatment group appear to have higher bacterial abundance?**

Remember:

    Observed difference
            ≠
    Statistical evidence

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

    library(tidyverse)

---

# 🧩 4.2 Basic `ggplot2` Structure

A basic plot looks like:

    ggplot(data, aes(...)) +
      geom_*

Think of it as:

    Data
     ↓
    Variables
     ↓
    Geometry
     ↓
    Plot

---

# 📦 4.3 Boxplot: Compare Groups

Our first visualization is a boxplot.

    ggplot(
      data,
      aes(
        x = Treatment,
        y = Bacterial_Abundance
      )
    ) +
      geom_boxplot()

The boxplot helps us see:

* Median
* Distribution
* Variation
* Potential unusual observations

---

# 🧬 4.4 Show Individual Samples

For microbiological data, it is often useful to show the individual observations.

Add:

    geom_jitter()

Complete plot:

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

Now we can see both:

    Summary of the distribution
            +
    Individual samples

This is particularly useful when the number of biological replicates is small.

---

# 🏷️ 4.5 Add Labels

A scientific figure should be understandable.

We can add labels:

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

---

# ✨ 4.6 Use a Simple Scientific Theme

We can use:

    theme_classic()

Complete version:

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

> 💡 Keep scientific figures simple.
>
> The purpose of a figure is to communicate biological information clearly.

---

# 📊 4.7 Histogram: Explore a Distribution

A histogram shows how values are distributed.

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

    ggplot(
      data,
      aes(
        x = Moisture,
        y = Bacterial_Abundance
      )
    ) +
      geom_point() +
      theme_classic()

Each point represents one sample.

---

# 🎨 4.9 Add Biological Information with Color

We can use color to represent treatment.

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

Now:

    x-axis
     ↓
    Moisture

    y-axis
     ↓
    Bacterial abundance

    color
     ↓
    Treatment

This is one of the most useful ideas in `ggplot2`:

> **Variables can control visual properties.**

---

# 📈 4.10 Optional: Add a Trend Line

We can add a simple trend line:

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

The line represents a fitted linear relationship.

> ⚠️ A trend line does not prove causation.

    model <- lm(
      Bacterial_Abundance ~ Moisture,
      data = data
    )

    summary(model)

---

# 💾 4.11 Save a Figure

We can save a figure using `ggsave()`.

First, store the plot:

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

Display it:

    p

Save it:

    ggsave(
      "figures/bacterial_abundance_treatment.png",
      plot = p,
      width = 6,
      height = 4,
      dpi = 300
    )

The figure will be saved in:

    figures/
    └── bacterial_abundance_treatment.png

---

# 🧠 4.12 Choosing the Right Plot

A useful rule of thumb:

| Question | Plot |
| --- | --- |
| What does the distribution look like? | Histogram |
| How do groups differ? | Boxplot |
| Where are individual observations? | Jitter / points |
| Are two continuous variables related? | Scatter plot |

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

    H₀:

    There is no difference in bacterial abundance
    between Control and Treatment.

### Alternative hypothesis

    H₁:

    Bacterial abundance differs between
    Control and Treatment.

---

# 📊 5.2 Compare Two Groups with a t-test

Because we have two groups, we can introduce a simple t-test.

Run:

    test_result <- t.test(
      Bacterial_Abundance ~ Treatment,
      data = data
    )

Display the result:

    test_result

---

# 🔎 5.3 Look at the p-value

We can extract the p-value:

    test_result$p.value

A commonly used threshold is:

    p < 0.05

For this introductory workshop, use the simplified interpretation:

    p < 0.05
        ↓
    Evidence against the null hypothesis

    p ≥ 0.05
        ↓
    Insufficient evidence to reject the null hypothesis

> ⚠️ Important:
>
> A p-value greater than or equal to 0.05 does **not** prove that there is no biological difference.
>
> It means that the data do not provide sufficient evidence to reject the null hypothesis under the chosen test.

---

# 🧠 5.4 Statistical Significance Is Not Biological Importance

Suppose we obtain:

    p = 0.001

This provides strong statistical evidence against the null hypothesis.

But that does not automatically mean:

> "The biological effect is very large."

We should consider:

    Statistical evidence
            +
    Magnitude of difference
            +
    Biological context

Similarly, a biologically interesting difference may not reach statistical significance if:

* Sample size is small
* Biological variation is high
* Measurement variation is high

---

# ⚠️ 5.5 Correlation and Other Tests

There are many other statistical approaches in microbiological research.

For example:

| Biological question | Possible method |
| --- | --- |
| Compare two groups | t-test |
| Compare more than two groups | ANOVA |
| Paired measurements | Paired t-test |
| Relationship between continuous variables | Correlation |
| Microbial community differences | PERMANOVA |
| Differential microbial taxa | Differential abundance methods |

We will **not** cover these methods in detail today.

The important principle is:

> **Choose a statistical method based on the biological question and experimental design.**

---

# 🚀 Section 5 Complete

We have now moved from:

    "I can see a difference."

to:

    "Is there statistical evidence for the difference?"

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

    Moisture ↑
         ↓
    Bacterial abundance ↑

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

    Observation
        ↓
    Magnitude
        ↓
    Statistical evidence
        ↓
    Biological relevance
        ↓
    Conclusion

---

# 🧪 Hands-on Challenge 1 — Exploring Bacterial Growth and Metabolism

For this challenge, we will work with a more complex microbiological dataset from a hypothetical bacterial growth experiment.

The experiment investigates how different **carbon sources** affect the growth and metabolic activity of three bacterial isolates.

The dataset contains:

* Bacterial isolate
* Carbon source
* Biological replicate
* Growth time
* Optical density (`OD600`)
* Viable bacterial count (`CFU_mL`)
* Culture pH
* Organic acid concentration

Our biological question is:

> **How do bacterial isolates respond differently to different carbon sources over time?**

---

# 1. Create the Dataset

Create the dataset manually:

    challenge_data <- data.frame(
      Isolate = c(
        "ISO01", "ISO01", "ISO01", "ISO01",
        "ISO01", "ISO01", "ISO01", "ISO01",
        "ISO01", "ISO01", "ISO01", "ISO01",
        "ISO02", "ISO02", "ISO02", "ISO02",
        "ISO02", "ISO02", "ISO02", "ISO02",
        "ISO02", "ISO02", "ISO02", "ISO02",
        "ISO03", "ISO03", "ISO03", "ISO03",
        "ISO03", "ISO03", "ISO03", "ISO03",
        "ISO03", "ISO03", "ISO03", "ISO03"
      ),

      Carbon_Source = c(
        "Glucose", "Glucose", "Glucose", "Glucose",
        "Acetate", "Acetate", "Acetate", "Acetate",
        "Lactate", "Lactate", "Lactate", "Lactate",
        "Glucose", "Glucose", "Glucose", "Glucose",
        "Acetate", "Acetate", "Acetate", "Acetate",
        "Lactate", "Lactate", "Lactate", "Lactate",
        "Glucose", "Glucose", "Glucose", "Glucose",
        "Acetate", "Acetate", "Acetate", "Acetate",
        "Lactate", "Lactate", "Lactate", "Lactate"
      ),

      Replicate = c(
        1, 1, 1, 1,
        1, 1, 1, 1,
        1, 1, 1, 1,
        1, 1, 1, 1,
        1, 1, 1, 1,
        1, 1, 1, 1,
        1, 1, 1, 1,
        1, 1, 1, 1,
        1, 1, 1, 1
      ),

      Time_h = rep(
        c(0, 4, 8, 12),
        9
      ),

      OD600 = c(
        0.05, 0.42, 0.91, 1.34,
        0.05, 0.21, 0.48, 0.72,
        0.05, 0.31, 0.66, 1.02,

        0.05, 0.55, 1.18, 1.71,
        0.05, 0.18, 0.39, 0.61,
        0.05, 0.27, 0.58, 0.91,

        0.05, 0.34, 0.73, 1.08,
        0.05, 0.29, 0.55, 0.82,
        0.05, 0.38, 0.81, 1.21
      ),

      CFU_mL = c(
        1.1e6, 7.8e6, 2.4e7, 4.1e7,
        1.0e6, 3.4e6, 9.2e6, 1.5e7,
        1.2e6, 5.1e6, 1.7e7, 2.9e7,

        1.0e6, 1.2e7, 3.8e7, 6.2e7,
        1.1e6, 2.8e6, 7.4e6, 1.2e7,
        1.0e6, 4.2e6, 1.5e7, 2.6e7,

        1.2e6, 6.1e6, 1.9e7, 3.2e7,
        1.1e6, 4.8e6, 1.3e7, 2.1e7,
        1.0e6, 6.7e6, 2.1e7, 3.5e7
      ),

      pH = c(
        7.00, 6.82, 6.51, 6.23,
        7.00, 6.91, 6.79, 6.68,
        7.00, 6.87, 6.61, 6.39,

        7.00, 6.74, 6.29, 5.94,
        7.00, 6.93, 6.84, 6.75,
        7.00, 6.90, 6.67, 6.43,

        7.00, 6.85, 6.55, 6.30,
        7.00, 6.89, 6.72, 6.57,
        7.00, 6.81, 6.48, 6.17
      ),

      Organic_Acid_mM = c(
        0.2, 1.8, 4.7, 7.1,
        0.2, 1.1, 2.8, 4.3,
        0.2, 1.5, 3.9, 5.8,

        0.2, 2.4, 6.1, 9.3,
        0.2, 0.9, 2.1, 3.4,
        0.2, 1.3, 3.5, 5.2,

        0.2, 1.6, 4.2, 6.4,
        0.2, 1.4, 3.2, 4.8,
        0.2, 1.9, 4.9, 7.0
      )
    )

    challenge_data

---

# 2. Inspect the Dataset

Before plotting, inspect the dataset.

    str(challenge_data)

Check the dimensions:

    dim(challenge_data)

View the first observations:

    head(challenge_data)

Get a statistical summary:

    summary(challenge_data)

---

# 3. Summarise the Experiment

Calculate the average OD600 for each isolate and carbon source.

    challenge_data %>%
      group_by(
        Isolate,
        Carbon_Source
      ) %>%
      summarise(
        mean_OD600 = mean(
          OD600
        ),
        sd_OD600 = sd(
          OD600
        ),
        .groups = "drop"
      )

Ask:

> **Which isolate appears to grow best on each carbon source?**

---

# 4. Plot the Growth Curves

Create a growth curve showing all three bacterial isolates.

    ggplot(
      challenge_data,
      aes(
        x = Time_h,
        y = OD600,
        color = Carbon_Source,
        group = Carbon_Source
      )
    ) +
      geom_point(
        size = 2
      ) +
      geom_line(
        linewidth = 1
      ) +
      facet_wrap(
        ~ Isolate
      ) +
      labs(
        title = "Bacterial Growth Under Different Carbon Sources",
        x = "Time (hours)",
        y = "Optical Density (OD600)"
      ) +
      theme_classic()

Ask:

> **Do the three bacterial isolates show the same growth response to the carbon sources?**

---

# 5. Compare Final Bacterial Abundance

Now focus on the final time point.

    final_time <- challenge_data %>%
      filter(
        Time_h == 12
      )

Plot viable bacterial counts:

    ggplot(
      final_time,
      aes(
        x = Carbon_Source,
        y = CFU_mL,
        fill = Isolate
      )
    ) +
      geom_col(
        position = "dodge"
      ) +
      scale_y_log10() +
      labs(
        title = "Viable Bacterial Counts at 12 Hours",
        x = "Carbon Source",
        y = "CFU/mL"
      ) +
      theme_classic()

Ask:

> **Which isolate and carbon source combination produces the highest viable bacterial count?**

---

# 6. Explore the Relationship Between Growth and Metabolism

Now investigate whether bacterial growth is associated with organic acid production.

    ggplot(
      challenge_data,
      aes(
        x = OD600,
        y = Organic_Acid_mM,
        color = Carbon_Source,
        shape = Isolate
      )
    ) +
      geom_point(
        size = 3
      ) +
      geom_smooth(
        method = "lm",
        se = FALSE
      ) +
      labs(
        title = "Bacterial Growth and Organic Acid Production",
        x = "Optical Density (OD600)",
        y = "Organic Acid (mM)"
      ) +
      theme_classic()

Ask:

> **Does higher bacterial growth appear to be associated with greater organic acid production?**

---

# 7. Explore pH Changes

Bacterial metabolism can change the pH of a culture.

Visualize the relationship between time and pH.

    ggplot(
      challenge_data,
      aes(
        x = Time_h,
        y = pH,
        color = Carbon_Source
      )
    ) +
      geom_point(
        size = 2
      ) +
      geom_line() +
      facet_wrap(
        ~ Isolate
      ) +
      labs(
        title = "Changes in Culture pH During Growth",
        x = "Time (hours)",
        y = "Culture pH"
      ) +
      theme_classic()

Ask:

> **Which carbon source shows the strongest change in culture pH?**

---

# 🧠 8. Final Biological Interpretation

Now combine the information from all four visualizations.

Discuss:

1. **Which isolate grows fastest?**
2. **Which carbon source supports the highest bacterial abundance?**
3. **Do all isolates respond similarly to the same carbon source?**
4. **Is higher bacterial growth associated with greater organic acid production?**
5. **Does bacterial growth appear to coincide with changes in culture pH?**
6. **Which bacterial isolate appears to have the strongest metabolic response?**

Think about the experiment as a biological system:

    Carbon Source
          ↓
    Bacterial Growth
          ↓
    Cell Abundance
          ↓
    Metabolic Activity
          ↓
    Organic Acid Production
          ↓
    Culture pH

---

# 🎯 What Did We Practice?

In this challenge, we combined several `ggplot2` concepts:

| Concept | Function |
| --- | --- |
| Scatter plot | `geom_point()` |
| Growth curve | `geom_line()` |
| Bar plot | `geom_col()` |
| Trend line | `geom_smooth()` |
| Multiple panels | `facet_wrap()` |
| Color | `color =` |
| Shape | `shape =` |
| Fill | `fill =` |
| Logarithmic axis | `scale_y_log10()` |
| Labels | `labs()` |
| Grouping | `group_by()` |
| Summary statistics | `summarise()` |
| Filtering | `filter()` |

The important idea is:

> **A single biological dataset can be explored from multiple perspectives.**

Different plots reveal different aspects of the same experiment:

    Growth curve
         ↓
    Temporal response

    CFU plot
         ↓
    Viable cell abundance

    OD600 vs organic acid
         ↓
    Growth–metabolism relationship

    pH curve
         ↓
    Physiological change

---

# 💡 Challenge Extension

If you finish early, modify one of the plots.

Try changing:

    facet_wrap(~ Isolate)

to:

    facet_wrap(~ Carbon_Source)

Or change:

    color = Carbon_Source

to:

    color = Isolate

Then ask:

> **Does changing the visual representation change how easily you can identify the biological pattern?**

---

# 🎯 The Complete Workflow

Congratulations — we have now completed a simple R-based microbiological analysis.

Our workflow was:

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

This workflow is more important than memorizing individual R commands.

---

# 🧬 From Simple Data to Microbiome Data

The datasets we used today are intentionally simple.

Real microbiological datasets can be much more complicated.

For example:

    Today
    Simple biological measurements
            ↓
    Treatment
    Soil
    pH
    Moisture
    Bacterial abundance

Later, we may work with:

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

And eventually:

    Sequencing reads
            ↓
    Quality control
            ↓
    Taxonomic / genomic information
            ↓
    Biological interpretation

The datasets become more complex.

But the basic analytical thinking remains:

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

---

# 🔬 Connection to the GEMA Workshop Series

This workshop is the foundation for the following workshops.

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

The purpose of Workshop 1 is **not** to teach microbiome analysis.

Instead, it provides the R foundation participants need to understand and manipulate the tables, metadata, visualizations, and statistical results they will encounter in the following workshops.

---

# 🧠 Key Takeaways

Today we learned that R can help us:

    Organize Data
          ↓
    Explore Data
          ↓
    Visualize Data
          ↓
    Test Questions
          ↓
    Interpret Results

We also learned several important R functions:

| Function | Purpose |
| --- | --- |
| `read.csv()` | Import CSV data |
| `head()` | View first rows |
| `dim()` | Check dimensions |
| `names()` | View column names |
| `str()` | Inspect data structure |
| `summary()` | Summarize data |
| `mean()` | Calculate mean |
| `sd()` | Calculate standard deviation |
| `filter()` | Select observations |
| `group_by()` | Group observations |
| `summarise()` | Calculate summaries |
| `ggplot()` | Create visualizations |
| `geom_boxplot()` | Create boxplots |
| `geom_histogram()` | Create histograms |
| `geom_point()` | Create scatter plots |
| `t.test()` | Compare two groups |

You do **not** need to memorize all of these today.

The goal is to understand what these functions do and how they fit into an analytical workflow.

---

# 🔁 Reproducibility

One of the most important advantages of R is reproducibility.

Instead of manually calculating numbers and creating figures, we write code.

For example:

    data %>%
      group_by(Treatment) %>%
      summarise(
        mean_abundance = mean(
          Bacterial_Abundance,
          na.rm = TRUE
        )
      )

The same analysis can be:

    Repeated
        ↓
    Checked
        ↓
    Modified
        ↓
    Shared
        ↓
    Reproduced

This becomes increasingly important as datasets become larger and more complex.

---

# 📁 Recommended Project Structure

For today's workshop:

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

For a real research project, the structure can be expanded:

    project/
    │
    ├── data/
    ├── metadata/
    ├── scripts/
    ├── figures/
    ├── tables/
    ├── results/
    └── README.md

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

---

# 🚀 See You in the Next GEMA Workshop!

## Workshop 2 — Exploring Microbiomes Using Short-Read Sequencing Data

In the next workshop, we will move from simple microbiological tables to sequencing data.

The workflow will become:

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

The data will become more complex.

But the fundamental principles remain:

    Organize
       ↓
    Explore
       ↓
    Visualize
       ↓
    Analyze
       ↓
    Interpret

---

# 🦠🧬📊 Thank You!

**See you in the next GEMA Workshop!**
