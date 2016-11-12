library(tidyverse)

# Plotting scatter plots and smooth plots on top of each other, X-Displ, Y-Hwy

# drv used to distinguish linetype and color
ggplot(data = mpg) + 
  geom_smooth(mapping = aes(x = displ, y = hwy, linetype = drv, color = drv)) +
  geom_point(mapping = aes(x = displ, y = hwy, color = drv))
 
# Simple smooth plot with drv grouping
ggplot(data = mpg) + 
  geom_smooth(mapping = aes(x = displ, y = hwy, group = drv))

# Non-grouped smooth plot with scatter plot colored by cyl
ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) +
  geom_smooth() +
  geom_point(aes(color = cyl))

# Smooth plot with no confidence interval, colored by drv
ggplot(data = mpg, mapping = aes(x = displ, y = hwy, color = drv)) + 
  geom_point() + 
  geom_smooth(se = FALSE)

# Smooth + Point with no confidence interval
ggplot(data = mpg, aes(x = displ, y = hwy)) +
  geom_smooth(se = FALSE) +
  geom_point()

# Smooth + Point with no confidence interval, with grouping by drv
ggplot(data = mpg, aes(x = displ, y = hwy, group = drv)) +
  geom_smooth(se = FALSE) +
  geom_point()

# Smooth + Point with no confidence interval, with grouping by drv and color by drv
ggplot(data = mpg, aes(x = displ, y = hwy, color = drv, group = drv)) +
  geom_smooth(se = FALSE, aes(linetype = drv)) +
  geom_point()

# Smooth + Point with no confidence interval, color by drv
ggplot(data = mpg, aes(x = displ, y = hwy)) +
  geom_smooth(se = FALSE) +
  geom_point(aes(color = drv))

# Simple bar plot grouped by cut
ggplot(data = diamonds) +
  geom_bar(mapping = aes(x = cut))


?geom_bar

demo <- tribble(
  ~a,      ~b,
  "bar_1", 20,
  "bar_2", 30,
  "bar_3", 40
)
# Bar chart relative to its inherit value
ggplot(data = demo) +
  geom_bar(mapping = aes(x=a, y=b), stat = "identity")

# Bar chart relative to proportion
ggplot(data = diamonds) +
  geom_bar(mapping = aes(x = cut, y = ..prop.., group = 1))


