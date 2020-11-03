# Install the tidyverse if not already installed
if (!requireNamespace("tidyverse"))
  install.packages("tidyverse")
# loading library
library("tidyverse")
# loading datafile
surveys_complete <- read_csv("data/surveys_complete.csv")

# Assign plot to a variable
surveys_plot <- ggplot(data = surveys_complete, mapping = aes(x = species_id, y = weight)) +
  geom_boxplot() #Changed to weight

# Draw the plot
surveys_plot +
  geom_point(alpha = 0.1, color = "pink")
