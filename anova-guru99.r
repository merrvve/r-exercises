
R version 4.2.1 (2022-06-23 ucrt) -- "Funny-Looking Kid"
Copyright (C) 2022 The R Foundation for Statistical Computing
Platform: x86_64-w64-mingw32/x64 (64-bit)

R is free software and comes with ABSOLUTELY NO WARRANTY.
You are welcome to redistribute it under certain conditions.
Type 'license()' or 'licence()' for distribution details.

R is a collaborative project with many contributors.
Type 'contributors()' for more information and
'citation()' on how to cite R or R packages in publications.

Type 'demo()' for some demos, 'help()' for on-line help, or
'help.start()' for an HTML browser interface to help.
Type 'q()' to quit R.

[Workspace loaded from ~/.RData]

> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 
> library(dplyr)

Attaching package: ‘dplyr’

The following objects are masked from ‘package:stats’:

    filter, lag

The following objects are masked from ‘package:base’:

    intersect, setdiff, setequal, union

> PATH <- "https://raw.githubusercontent.com/guru99-edu/R-Programming/master/poisons.csv"
> df <- read.csv(PATH) %>%
+     select(-X) %>% 
+     mutate(poison = factor(poison, ordered = TRUE))
> glimpse(df)
Rows: 48
Columns: 3
$ time   <dbl> 0.31, 0.45, 0.46, 0.43, 0.36, 0.29, 0.40, 0.23, 0.22, …
$ poison <ord> 1, 1, 1, 1, 2, 2, 2, 2, 3, 3, 3, 3, 1, 1, 1, 1, 2, 2, …
$ treat  <chr> "A", "A", "A", "A", "A", "A", "A", "A", "A", "A", "A",…
> class(df$poison)
[1] "ordered" "factor" 
> class(df$treat)
[1] "character"
> summarise(gruop_by(df,poison),mean(time),sd(time))
Error in gruop_by(df, poison) : could not find function "gruop_by"
> summarise(group_by(df,poison),mean(time),sd(time))
# A tibble: 3 × 3
  poison `mean(time)` `sd(time)`
  <ord>         <dbl>      <dbl>
1 1             0.618     0.209 
2 2             0.544     0.289 
3 3             0.276     0.0623
> summarise(group_by(df,poison),mean(time),sd(time),n_count(time))
Error in `summarise()`:
! Problem while computing `..3 = n_count(time)`.
ℹ The error occurred in group 1: poison = 1.
Caused by error in `n_count()`:
! could not find function "n_count"
Run `rlang::last_error()` to see where the error occurred.
> summarise(group_by(df,poison),mean(time),sd(time),n(time))
Error in `summarise()`:
! Problem while computing `..3 = n(time)`.
ℹ The error occurred in group 1: poison = 1.
Caused by error in `n()`:
! unused argument (time)
Run `rlang::last_error()` to see where the error occurred.
> library(ggplot2)
> ggplot(df,aes(x=poison,y=time)) +
+ stat_summary(fun=mean,geom="point)+
+ theme_classic()
+ )
+ )
+ geom_boxplot()
+ )
+ 
+ ))
+ ))))))
+ 
> ggplot(df,aes(x=poison,y=time)) +
+ geom_boxplot()+
+ stat_summary(fun=mean,geom="point)+
+ geom_boxplot()
+ )
+ 
+ 
+ 
+ 
> ggplot(df,aes(x=poison,y=time)) +
+ geom_boxplot()
> ggplot(df,aes(x=poison,y=time)) +
+ geom_boxplot()
> ggplot(df,aes(x=poison,y=time)) +
+ geom_boxplot()+
+ stat_summary(fun=mean,geom="point")+
+ theme_classic()
> ggplot(df,aes(x=poison,y=time)) +
+ geom_boxplot(outlier.shape=2)+
+ theme_classic()
> ggplot(df,aes(x=poison,y=time, color=poison)) +
+ geom_boxplot(outlier.shape=2)+
+ stat_summary(fun=mean,geom="point")+
+ theme_classic()
> summarise(group_by(df,poison),n(),mean(time),sd(time))
# A tibble: 3 × 4
  poison `n()` `mean(time)` `sd(time)`
  <ord>  <int>        <dbl>      <dbl>
1 1         16        0.618     0.209 
2 2         16        0.544     0.289 
3 3         16        0.276     0.0623
> summarise(group_by(df,poison),n(),mean(time,na.rm=TRUE),sd(time,na.rm=TRUE))
# A tibble: 3 × 4
  poison `n()` `mean(time, na.rm = TRUE)` `sd(time, na.rm = TRUE)`
  <ord>  <int>                      <dbl>                    <dbl>
1 1         16                      0.618                   0.209 
2 2         16                      0.544                   0.289 
3 3         16                      0.276                   0.0623
> ggplot(df, aes(x = poison, y = time, fill = poison)) +
+     geom_boxplot() +
+     geom_jitter(shape = 15,
+                 color = "steelblue",
+                 position = position_jitter(0.21)) +
+     theme_classic()
> anova_one_way <- aov(time~poison, data = df)
> summary(anova_one_way)
            Df Sum Sq Mean Sq F value   Pr(>F)    
poison       2  1.033  0.5165   11.79 7.66e-05 ***
Residuals   45  1.972  0.0438                     
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1
> TukeyHSD(anova_one_way)
  Tukey multiple comparisons of means
    95% family-wise confidence level

Fit: aov(formula = time ~ poison, data = df)

$poison
         diff        lwr         upr     p adj
2-1 -0.073125 -0.2525046  0.10625464 0.5881654
3-1 -0.341250 -0.5206296 -0.16187036 0.0000971
3-2 -0.268125 -0.4475046 -0.08874536 0.0020924

> anova_two_way <- aov(time~poison + treat, data = df)
> summary(anova_two_way)
            Df Sum Sq Mean Sq F value  Pr(>F)    
poison       2 1.0330  0.5165   20.64 5.7e-07 ***
treat        3 0.9212  0.3071   12.27 6.7e-06 ***
Residuals   42 1.0509  0.0250                    
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1
> 