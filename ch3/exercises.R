# (1) 以下は10人の大学生の一日の勉強時間(単位は時間)と定期試験の得点(100 点満点)のデータです。勉強時間を横軸に、定期試験を縦軸にした散布図を 描いてみましょう
currentDirectory <- (function() {
  path <- (function() attr(body(sys.function(-1)), "srcfile"))()$filename
  dirname(path)
})()
dataFrame <- read.csv(file.path(currentDirectory, "exercises_1.csv") , header=TRUE)
時間 <- dataFrame$勉強時間
得点 <- dataFrame$定期試験の得点
plot(時間, 得点)

# (2) 相関係数

cor(時間, 得点)

# (3) 質的変数 - クロス集計

quality <- read.csv(file.path(currentDirectory, "exercises_3.csv") ,header=TRUE)
洋食or和食 <- quality$洋食派か和食派か
甘党or辛党 <- quality$甘党か辛党か
table(洋食or和食, 甘党or辛党)

# (4) ファイ係数

phi和洋 <- ifelse(洋食or和食 == "和食" , 1, 0);
phi甘辛 <- ifelse(甘党or辛党 == "甘党" , 1, 0);
cor(phi和洋, phi甘辛)