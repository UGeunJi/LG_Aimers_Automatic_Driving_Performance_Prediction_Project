library(readr)
# 데이터 불러오기
train <- read_csv("train.csv")
test <- read_csv("test.csv")
submit<- read_csv("submit.csv")
new_submit <- data.frame(submit$ID)
names(new_submit)[1] <- c("ID")
new_submit

# Y 예측(Y_01부터 Y_14까지 설명 변수를 바꿔가면서 예측
for (i in 1:14) {
  print(i)
  model_1=lm(get(sprintf('Y_%02d', i)) ~ X_01+X_02+X_03+X_04+X_05+X_06+X_07+X_08+X_09+X_10+X_11+X_12+X_13+X_14+X_15+X_16+X_17+X_18+X_19+X_20+X_21+X_22+X_23+X_24+X_25+X_26+X_27+X_28+X_29+X_30+X_31+X_32+X_33+X_34+X_35+X_36+X_37+X_38+X_39+X_40+X_41+X_42+X_43+X_44+X_45+X_46+X_47+X_48+X_49+X_50+X_51+X_52+X_53+X_54+X_55+X_56, data=train)
  model_2 = step(model_1, direction = "backward")
  predict_value<- predict(model_2,test)
  new_submit[,sprintf('Y_%02d', i)] <- predict_value
}

# csv 파일 저장
write.csv(new_submit,file="new_submit.csv",row.names=FALSE)
