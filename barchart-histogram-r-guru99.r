ggplot(mtcars, aes(x = factor(cyl))) +
geom_bar()
head(mtcars)
ggplot(mtcars, aes(x = factor(cyl))) +
geom_bar(fill = "coral") +
theme_classic()
grDevices::colors()
ggplot(mtcars,
aes(factor(cyl))) +
geom_bar(fill = "coral",
alpha = 0.5) +
theme_classic()
ggplot(mtcars, aes(factor(cyl),
fill = factor(cyl))) +
geom_bar()
View(mtcars)
data <- mtcars %>%
#Step 2
mutate(am = factor(am, labels = c("auto", "man")),
cyl = factor(cyl))
ggplot(data, aes(x = cyl, fill = am)) +
geom_bar() +
theme_classic()
ggplot(data, aes(x = cyl, fill = am)) +
geom_bar(position = "fill") +
theme_classic()
ggplot(data, aes(x = cyl, fill = am)) +
geom_bar(position = position_dodge()) +
theme_classic()
data_histogram <- mtcars %>%
mutate(cyl = factor(cyl)) %>%
group_by(cyl) %>%
summarize(mean_mpg = round(mean(mpg), 2))
ggplot(data_histogram, aes(x = cyl, y = mean_mpg)) +
geom_bar(stat = "identity") +
coord_flip()
ggplot(data_histogram, aes(x = cyl, y = mean_mpg, fill = cyl)) +
geom_bar(stat = "identity",
width = 0.5) +
coord_flip() +
theme_classic()
Code Explanation
graph <- ggplot(data_histogram, aes(x = cyl, y = mean_mpg, fill = cyl)) +
geom_bar(stat = "identity",
width = 0.5) +
coord_flip() +
theme_classic()
graph +
geom_text(aes(label = mean_mpg),
hjust = 1.5,
color = "white",
size = 3) +
theme_classic()
