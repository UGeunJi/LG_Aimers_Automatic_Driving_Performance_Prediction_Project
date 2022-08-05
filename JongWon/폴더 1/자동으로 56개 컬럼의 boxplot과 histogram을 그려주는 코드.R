# 패키지 로드
library(readr)
library(dplyr) 
library(ggplot2)
library(gridExtra)
# 그래프 저장
train <- read_csv("train.csv")

# 자동으로 56개 컬럼의 boxplot과 histogram을 그려주는 코드
for (i in 1:56){
  text1 <- paste0('ggplot(train, aes(,', sprintf('X_%02d', i),')) + geom_boxplot()') #그래프 그리기
  p1 <- eval(parse(text = text1))
  text2 <- paste0('ggplot(train, aes(',sprintf('X_%02d', i),',)) + geom_histogram()') #그래프 그리기
  p2 <- eval(parse(text = text2))
  g <-arrangeGrob(p1,p2,nrow = 1)
  ggsave(paste0("./picture/",sprintf('X_%02d', i),".png"),g)
}
