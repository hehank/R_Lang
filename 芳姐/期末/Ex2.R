# 這裡之後要改成自己存放 owid-covid-data.csv 的絕對路徑
my_data <- read.csv("~/Practice/R_Lang/芳姐/期末/data/owid-covid-data.csv", header = TRUE)
print(head(my_data, 3))
print(tail(my_data, 3))

