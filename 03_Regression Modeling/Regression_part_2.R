# Checking for collinearity with Variance inflation factor
car::vif(lmfit.2)


# Interaction LM
int.fit <- lm(mpg ~ hp*wt + am, data = mtcars)

summary(int.fit)

# Logistic regression

gm.fit <- glm(vs ~ wt + disp, 
              data = mtcars, 
              family = "binomial")

summary(gm.fit)

summary(gm.fit)$coefficients

# Odds ratio
exp(coef(gm.fit))

# CIs
confint(gm.fit)

# ORs and CIs
exp(cbind(OR = coef(gm.fit), confint(gm.fit)))

## Stepwise Regression

full.fit <- lm( mpg ~ hp * wt + am + qsec ,  
                data = mtcars  
)

# Backward deletion
step( object = full.fit,     
      direction = "backward" 
)

# Forward selection

step( object = full.fit,     
      direction = "forward" 
)

# Regression table (use file argument to save as e.g. docx)
sjPlot::tab_model(full.fit)


# ANOVA
head(PlantGrowth)

# Means
mgrped <-  group_by(PlantGrowth, group) %>%
  summarise(
    count = n(),
    mean = mean(weight, na.rm = TRUE),
    sd = sd(weight, na.rm = TRUE)
  )

# ANOVA
res.aov <- aov(weight ~ group, data = PlantGrowth)
# Summary of the analysis
summary(res.aov)

# multiple comparisons
TukeyHSD(res.aov)

library(lme4)
lme.fit <- lmer ( Reaction ~ Days + ( Days | Subject ) , data= sleepstudy )
