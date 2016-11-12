library(tidyverse)

ggplot(data = mpg) + 
  geom_smooth(mapping = aes(x = displ, y = hwy, linetype = drv, color = drv)) +
  geom_point(mapping = aes(x = displ, y = hwy, color = drv))
  
ggplot(data = mpg) + 
  geom_smooth(mapping = aes(x = displ, y = hwy, group = drv))

ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) +
  geom_smooth() +
  geom_point(aes(color = cyl))


ggplot(data = mpg, mapping = aes(x = displ, y = hwy, color = drv)) + 
  geom_point() + 
  geom_smooth(se = FALSE)

ggplot(data = mpg, aes(x = displ, y = hwy)) +
  geom_smooth(se = FALSE) +
  geom_point()

ggplot(data = mpg, aes(x = displ, y = hwy, group = drv)) +
  geom_smooth(se = FALSE) +
  geom_point()

ggplot(data = mpg, aes(x = displ, y = hwy, color = drv, group = drv)) +
  geom_smooth(se = FALSE, aes(linetype = drv)) +
  geom_point()

ggplot(data = mpg, aes(x = displ, y = hwy)) +
  geom_smooth(se = FALSE) +
  geom_point(aes(color = drv))


ggplot(data = diamonds) +
  geom_bar(mapping = aes(x = cut))
?geom_bar
