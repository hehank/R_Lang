# library('rlist')

# ex1
cat("\f")
obj <- "flowers"
colors <- c("red", "yellow", "blue")
colors_many <- c("reds", "yellows", "blues")
count <- "several"

colors_line <- paste(colors, collapse = ', ')

paste(colors, obj)
paste0(colors, obj)
paste(count, colors_many)
paste("I like",colors_line)


#ex2
cat("\f")
set.seed(6608)
math.score <- sample(0:100, 50, replace = TRUE)
average <- 0
score <- list()
max_stu <- length(math.score)

# The average score of ten student
for (i in 1:10){
  average <- average + math.score[i]
}

average <- average / 10


# Find students who have passed scores
for (i in 1:max_stu){
  if (math.score[i] >= 60){
    score <- append(score, i)
  }
}

pass_stu_total <- length(score)
toString(score)

print(cat("全部同學成績：", math.score))
print(paste("平均成績：", average))
cat("成績及格的同學為：", toString(score), "號同學")
cat("\n")
print(paste("共有", pass_stu_total, "位同學及格"))
