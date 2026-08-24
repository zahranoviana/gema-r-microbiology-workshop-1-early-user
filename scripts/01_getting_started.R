# ============================================================
# Workshop 1: Fundamental R Programming for
# Microbiological Data Analysis and Visualization
#
# Section 1: Getting Started with R
# Script: 01_getting_started.R
# ============================================================


# ------------------------------------------------------------
# 1.4 Your First R Commands
# ------------------------------------------------------------

# R can perform calculations just like a calculator.

1 + 1

10 * 5

100 / 4


# ------------------------------------------------------------
# 1.5 Creating Objects
# ------------------------------------------------------------

# Store information in objects.

sample_id <- "S01"

treatment <- "Control"

abundance <- 1250


# Inspect the objects.

sample_id

treatment

abundance


# The symbol <- means:
# "Store this value in an object."


# ------------------------------------------------------------
# 1.6 A Simple R Mental Model
# ------------------------------------------------------------

# Biological information
#        ↓
#      Objects
#        ↓
#     Functions
#        ↓
#      Results


# Example:

abundance <- 1250

mean(abundance)


# ============================================================
# Section 1 Complete
# ============================================================