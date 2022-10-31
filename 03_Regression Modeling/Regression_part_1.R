# Maybe you need these packages:

install.packages(c('broom', 'sjPlot'))


library(ggplot2)
ggplot(cars, aes(x=speed, y=dist)) + 
  geom_point() + 
  geom_smooth(method=lm, se=FALSE, fullrange=TRUE, color='black') +
  labs(x="Speed (mph)", y="Stopping Distance (ft)")


# Predicting distance with speed
lmfit <- lm(dist ~ speed, data=cars)

# Will print the results:
# summary(lmfit)
# But for a better overview:
broom::glance(lmfit)


# Getting 4 plots
plot(lmfit)


# Linearity check
yhat.2 <- fitted.values(lmfit)
plot( x = yhat.2, 
      y = cars$dist,
      xlab = "Fitted Values",
      ylab = "Observed Values" )


# Bootstrapping
lmfit.boot <- car::Boot(lmfit, R=2000)
summary(lmfit.boot)

# Confint using bias corrected accelerated (bca)

confint(lmfit.boot, level=.95, type="bca")

## Multiple Regression Modeling

lmfit.2 <- lm(mpg ~ hp + am, data=mtcars)

# Will print the results:
summary(lmfit.2)
# But for a better overview:
broom::glance(lmfit.2)

# Estimates:
broom::tidy(lmfit.2)

# Confidence interval:

confint(lmfit.2)
