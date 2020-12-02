input1 <- read.table("~/R/adventofcode/input1.txt", quote = "\"", comment.char = "")


# add 2 nums --------------------------------------------------------------

for (i in 1:length(input1$V1)) {
     for (j in 1:length(input1$V1)) {
         if (input1[i,1] + input1[j,1] == 2020){
           print(c(input1[i,1], input1[j,1], input1[i,1] * input1[j,1]))
         }
       }
   }

# for 3 nums --------------------------------------------------------------

three_nums <- function(input1) {
  for (i in 1:length(input1$V1)) {
    for (j in 1:length(input1$V1)) {
      for (k in 1:length(input1$V1)) {
        if (input1[i,1] + input1[j,1] > 2020) break
        if (input1[i,1] + input1[j,1] + input1[k,1] == 2020)
        {
          return(c(input1[i,1], input1[j,1], input1[k,1],
                   input1[i,1] * input1[j,1] * input1[k,1]))
        }
      }
    }
  }
}


system.time(three_nums(input1))
