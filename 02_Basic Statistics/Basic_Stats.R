# One Sample t-test

#simulate data
set.seed(150)
df <- data.frame(RT = rnorm(100, mean = 53, sd = 10))

t.test(df$RT, mu = 53)


## Normality: Histogram
library(ggplot2)

ggplot(df, aes(x=RT)) + 
  geom_histogram(binwidth=5)

## Read data for Indpendent Sample
library(dplyr)
df_istt <- readxl::read_excel('./Data/is-t-test.xlsx') %>%
  mutate(Group = as_factor(Group))
head(df_istt, 2)

## Student's T-test
df_istt <- readxl::read_excel('../Data/is-t-test.xlsx')
tt.results <- t.test(Depression~Group, data=df_istt,
                     var.equal = T)

print(tt.results)

# Welch's T-test
tt.results-w <- t.test(Depression~Group, data=df_istt, 
                     var.equal = F)

print(tt.results.w)


# Visualize data:
ggplot(df_istt, aes(x=Group, y=Depression)) + 
  # Add layer of boxplot
  geom_boxplot()

# Normality

## Note, we use the subset function: Group one
shapiro.test(subset(df_istt, Group == "One")$Depression)

## Note, we use the subset function: Group two
shapiro.test(subset(df_istt, Group == "Two")$Depression)

## QQplot
p <- ggplot(df_istt, aes(sample = Depression))
p + stat_qq() + stat_qq_line() + facet_wrap(~Group)

## Equal Variances:

stats::bartlett.test(Depression~Group, data=df_istt)

car::leveneTest(Depression~Group, data=df_istt)

## Paired samples t-test
df_csv <- read.csv('./Data/paired_samples_data.csv')
t.test(score ~ test, paired = TRUE, df_csv)


## Chi-squared

M <- as.table(rbind(c(762, 327, 468), c(484, 239, 477)))
dimnames(M) <- list(gender = c("F", "M"),
                    party = c("Democrat","Independent", "Republican"))

(Xsq <- chisq.test(M))


## Pearson's Correlation

df_cr <- readRDS('../Data/pcor.RDs')

# Correlation analysis:

cor.test(~ RSpan + Raven, data = df_cr)

# Scatter plot
p <- ggplot(df_cr, aes(x=RSpan, y=Raven)) + geom_point() + geom_smooth(method=lm)


# Spearman

cor.test(~ RSpan + Raven, method='spearman', data = df_cr,
         exact = FALSE)