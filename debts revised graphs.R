# Load necessary libraries
library(plotly)
library(readxl)

# Bar Plot: Total Liabilities by State
bar_plot <- plot_ly(
  data = debts,
  x = ~State,
  y = ~`Total Liabilities (Billion $)`,
  type = 'bar',
  name = 'Total Liabilities'
) %>%
  layout(title = 'Total Liabilities by State',
         xaxis = list(title = 'State'),
         yaxis = list(title = 'Total Liabilities (Billion $)'))

# Display bar plot
bar_plot


# Load necessary libraries
library(plotly)
library(dplyr)



# Create an interactive choropleth map
choropleth_map <- plot_ly(
  data = debts,
  locations = ~State,  # State abbreviations (like AK, WA, etc.)
  locationmode = 'USA-states',
  z = ~`Total Liabilities (Billion $)`,  # Refer to the correct column name
  type = 'choropleth',
  colorscale = 'Blues',
  colorbar = list(title = "Total Liabilities (Billion $)")
) %>%
  layout(
    title = 'Total Liabilities by U.S. State',
    geo = list(
      scope = 'usa',
      projection = list(type = 'albers usa'),
      showlakes = TRUE,  # Lakes
      lakecolor = toRGB('black')
    )
  )

# Display the interactive map
choropleth_map

