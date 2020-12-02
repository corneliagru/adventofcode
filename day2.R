input2 <- read.table("~/R/adventofcode/input2.txt", quote="\"", comment.char="")

library(stringr)
library(dplyr)
library(tidyr)


input2 <- input2  %>% separate(V1, c("lower", "upper"))
input2$lower <- as.numeric(input2$lower)
input2$upper <- as.numeric(input2$upper)


input2$V2 <- str_remove(input2$V2, "[:]")

input2 <- rename(input2, letter = V2, password = V3)

input2$count <- 
str_count(input2[, "password"], input2[, "letter"])

input2$valid <- input2[,"lower"] <= input2[,"count"] &
  input2[,"upper"] >= input2[,"count"]

sum(input2$valid)


summary(input2)


input2$first <-
substr(input2[, "password"], start = input2[,"lower"], stop = input2[,"lower"])
input2$last <-
substr(input2[, "password"], start = input2[,"upper"], stop = input2[,"upper"])

input2[1,"first"]




input2$count2 <- str_count(paste(input2[, "first"], input2[, "last"]), input2[, "letter"])


input2$valid2 <- input2$count2 == 1

summary(input2)
