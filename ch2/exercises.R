A大学 <- c(60, 100, 50, 40, 50, 230, 120, 240, 200, 30)
B大学 <- c(50, 60, 40, 50, 100, 80, 30, 20, 100, 120)

# (1) 各大学のヒストグラム
hist(A大学)
hist(B大学)

# (2) 各大学の平均と標準偏差
mean(A大学)
mean(B大学)

# 標準偏差
standardDevitation <- function(x) {
  # 分散を累乗したもの
  分散 <- sum((x - mean(x))^2) / length(x);
  return(sqrt(分散))
}
standardDevitation(A大学)
standardDevitation(B大学)

# 標準化
standardize <- function(x){
  zPoint <- (x - mean(x)) / standardDevitation(x)
  return(zPoint)
}
standardize(A大学)
standardize(B大学)