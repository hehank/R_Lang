library(scales)

my.test <- function(scores){
  scores_list <- as.list(scores)  # 將讀取到的資料(向量)轉成 List
  total <- length(scores_list)  # 總共有多少人
  count <- 0  # 紀錄有幾人及格
  deter <- FALSE  # 判斷是否有成績 90 以上(含)的同學
  no_pass <- 0  # 紀錄不及格的人數
  
  for (element in scores_list){
    if (deter == TRUE && count >= total/2){
      break
    }
    if (element >= 90){
      deter = TRUE
    }
    if (element >= 60){
      count <- count + 1
    }else{
      no_pass <- no_pass + 1
    }
  }
  
  if (deter == TRUE && count >= total/2){
    # 成績及格人數達半數以上(含), 且有 90 分以上同學
    scores_sum <- Reduce('+' ,scores_list)  # 所有成績總和
    scores_ave <- round(scores_sum/total, 2)  # 平均成績
    cat("本次成績不調分，平均為: ", scores_ave)
  }else{
    # 否則
    noPass_prop <- round(no_pass/total, 2)  # 沒通過的比例
    noPass_perc <- percent(noPass_prop)  # 轉成百分比
    cat("本次成績會調分，不及格比例為: ", noPass_perc)
  }
}

set.seed(123456)

score <- sample(1:100, 50, T)
# score <- sample(1:100, 150, T)

my.test(score)
