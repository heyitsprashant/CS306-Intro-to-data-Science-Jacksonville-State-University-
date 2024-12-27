# Load the required libraries
library(dplyr)    # For data manipulation
library(ggplot2)  # For data visualization
library(dslabs)   # For accessing datasets

# Load the datasets
data(heights)
data(murders)

# Task 1: Create an object 'p' using the murders dataset and determine its class
p <- ggplot(murders)  # Create the ggplot object
class(p)  # Check the class of 'p'

# Task 2: Print the object 'p' and describe what you see
print(p)  # This will display the object. Describe the result in your response.
#When we print p, a blank plot appears because the ggplot object is incomplete. It only has the dataset (murders) but no layers or aesthetics added yet. ggplot starts as a blank canvas and requires additional layers to display a meaningful plot.

# Task 3: Create an object 'p' using the heights dataset and determine its class
p <- ggplot(heights)  # Create the ggplot object using heights
class(p)  # Check the class of the new 'p'

#This indicates that p is a ggplot object, ready to be customized with layers and aesthetic mappings for data visualization.

# Task 4: Explore the murders dataset to identify variable names for plotting
head(murders)  # View the first few rows of the murders dataset
# Variable names: 'total' for total murders, 'population' for population size.

# Task 5: Create a scatterplot with population on x-axis and total murders on y-axis
murders |> ggplot(aes(x = population, y = total)) + geom_point()
#The correct variable names are TOTAL for total murders and POPULATION for population size.

# Task 6: Create the scatterplot with axes swapped
murders |> ggplot(aes(x = total, y = population)) + geom_point()
#This maps POPULATION to the x-axis and TOTAL to the y-axis.


# Task 7: Explain why geom_label() gives an error without specifying a label
# Answer: geom_label() requires a label aesthetic to map a character string to each point.
murders |> ggplot(aes(total, population)) + geom_point()

# Task 8: Rewrite the scatterplot code to use state abbreviations as labels
murders |> ggplot(aes(x = population, y = total, label = abb)) + geom_label()
#The error occurs because geom_label() needs a label aesthetic. To fix it, map the abb column to label:

# Task 9: Change the color of the labels to blue
murders |> ggplot(aes(x = population, y = total, label = abb)) + geom_label(color = "blue")
#We do not need to map colors, just use the color argument in geom_label() to make all labels blue.


# Task 10: Use color to represent different regions in the plot
murders |> ggplot(aes(x = population, y = total, label = abb, color = region)) + geom_label()

# Task 11: Change the x-axis to a log scale
# Define an object p holding the plot with labels colored by region
p <- murders |> ggplot(aes(population, total, label = abb, color = region)) + geom_label()
p + scale_x_log10()

# Task 12: Change both axes to log scale
p + scale_x_log10() + scale_y_log10()

# Task 13: Add a title "Gun murder data" to the plot
p + scale_x_log10() + scale_y_log10() + ggtitle("Gun murder data")

