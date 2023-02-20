library(ggplot2)

movies <- read.csv("P2-Movie-Ratings.csv")

colnames(movies) <- c("Film", "Genre", "CriticRatings", "AudienceRatings", "BudgetMillions", "Year")
head(movies)
str(movies)

movies$Year <- as.factor(movies$Year)
movies$Film <- as.factor(movies$Film)
movies$Genre <- as.factor(movies$Genre)

summary(movies)
### Boxplot with critic rating

main <- ggplot(data = movies, aes(x = Genre, y = AudienceRatings, colour = Genre))

main + geom_boxplot(size = 1.2) + geom_jitter()

##better
main + geom_jitter() + geom_boxplot(size = 1.2, alpha = 0.5)

### Overwriting y in main
main + geom_boxplot(aes(y = CriticRatings), size = 1.2)
