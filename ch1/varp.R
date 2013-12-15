varp <- function(x) {
  標本分散 <- var(x)*(length(x)-1)/length(x)
  標本分散
}