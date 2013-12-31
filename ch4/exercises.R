# 1)
# N(50, 102)の正規母集団からn=20の標本抽出を5,000回繰り返すことにより
# 標本平均の経験的な標本分布を求めてください

sampleArray = numeric(length=5000)
for(i in 1:5000){  
  sample <- rnorm(20, mean=50, sd=10)
  sampleArray[i] = mean(sample);
}
hist(sampleArray, freq=FALSE)
curve(dnorm(x, mean=50, sd=sqrt(10^2/20)), add=TRUE)


# 2)
# 理論的な標本分布について、
# サンプルサイズをn=1、4、9、16、25と変 化させたときに、標本分布の形状がどのように変わるかを調べてみましょう。
# 母集団分布は標準正規分布 N(0, 1^2)としてください。

curve(dnorm(x, mean=0, sd=sqrt(1/25)))
curve(dnorm(x, mean=0, sd=sqrt(1/16)), add=TRUE)
curve(dnorm(x, mean=0, sd=sqrt(1/9)), add=TRUE)
curve(dnorm(x, mean=0, sd=sqrt(1/4)), add=TRUE)
curve(dnorm(x, mean=0, sd=sqrt(1/1)), add=TRUE)
