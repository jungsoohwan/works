library(dplyr)

df_raw <- data.frame(var1=c(1,2,1),
                     var2=c(2,3,2))
df_raw

df_new <-rename(df_raw, New_V2=var2, New_V1=var1)

df_new


df <- data.frame(var1=c(4,3,8),
                 var2=c(4,7,2))
df

df$var_sum <- df$var1 + df$var2

df

col1 = c(6,8,2)
col2 = c( 3,6,9)

df = data.frame(col1,col2)
df

df_new = rename(df, C1 =col1, C2=col2)
df_new

df_new$sum = df_new$C1+df_new$C2
df_new

df_new$mean = (df_new$C1 + df_new$C2)/2

df_new

##################  mpg 
library(ggplot2)
str(mpg)

mpg$total <- mpg$cty + mpg$hwy
mpg

################## 조건 충족
mean(mpg$total)
summary(mpg$total)

mpg$test = ifelse(mpg$total > 50, "good", "bad")

mpg$test = if(mpg$total > 50) {
                 print("Good")
           } else {
                 print("not good")
           }
#View(mpg)
table(mpg$test)

##############  중첩 Grade
mpg$grade = ifelse(mpg$total > 45, "A", 
                   ifelse(mpg$total > 35,"B","C"))
aa = table(mpg$grade)

barplot(aa)                   


str(midwest)

midwest_new <- rename(midwest, total = poptotal, asian = popasian)

midwest_new$
    
    