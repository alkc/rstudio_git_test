# Install the tidyverse if not already installed
if (!requireNamespace("tidyverse"))
  install.packages("tidyverse")
# loading library
library("tidyverse")
# loading datafile
surveys_complete <- read_csv("data/surveys_complete.csv")

# Assign plot to a variable
surveys_plot <- ggplot(data = surveys_complete, mapping = aes(x = species_id, y = weight, fill = species_id))

# Draw the plot
surveys_plot +
  geom_boxplot() +
  theme(legend.position = "none")
