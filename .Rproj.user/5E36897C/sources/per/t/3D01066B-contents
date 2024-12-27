# Load the data from worms.txt
worms <- read.table("worms.txt", header = TRUE, sep = "\t")

# Access rows 3 through 15 and columns 1 through 4
worms2 <- worms[3:15, 1:4]

# Write worms2 to a CSV file
write.csv(worms2, "C:\\Users\\Acer\\Desktop\\Freshman II\\CS 306\\worms2.csv", row.names = FALSE)

# Remove rows 1 and 2, and column 3 from worms2
worms3 <- worms2[-c(1, 2), -3]

# Sample 5 data points from worms
set.seed(123) # Setting seed for reproducibility
worms4 <- worms[sample(nrow(worms), 5), ]

# Filter worms for Vegetation Scrub or Meadow, and Soil.pH > 5.0
worms5 <- subset(worms, Vegetation %in% c("Scrub", "Meadow") & Soil.pH > 5.0)

# Filter worms for Area > 3.0 and Worm.density < 9, return specific columns
worms6 <- subset(worms, Area > 3.0 & Worm.density < 9, select = c(Field.Name, Area, Slope, Worm.density))

# Sort worms by Area in descending order and Worm.density in ascending order
worms_sorted <- worms[order(-worms$Area, worms$Worm.density), ]

# Use lapply() to find mean, median, and standard deviation in worms data frame
stats <- lapply(worms[, sapply(worms, is.numeric)], function(x) {
  list(mean = mean(x), median = median(x), sd = sd(x))
})

# Add a new row to the worms data frame
new_row <- data.frame(Field.Name = "Ann.Farm", Area = 10, Slope = 12, Vegetation = "Meadow", Soil.pH = 3.5, Damp = TRUE, Worm.density = 6)
worms <- rbind(worms, new_row)