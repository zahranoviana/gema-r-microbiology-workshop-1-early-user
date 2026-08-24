# Create microbiological sample data

microbiology_samples <- data.frame(
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
microbiology_samples

# Save as CSV
write.csv(
  microbiology_samples,
  "data/microbiology_data.csv",
  row.names = FALSE
)