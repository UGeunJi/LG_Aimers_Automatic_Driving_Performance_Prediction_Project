# 폴더 1
## Y 컬럼별 중요 설명변수 추출 후 개별 모델링
- 1.9746794694의 public score이 나왔다.(baseline code 보다 점수가 낮다.)
# 폴더 2
## 간단한 정규화 후 mlp 진행
- 2.0070917362의 성능이 나왔다.
# 폴더 3
## 간단한 정규화 후 검사 합격 데이터 제거 후 mlp 진행
- 2.0110865911의 성능이 나왔다.

# 폴더 4

## group 화한 설명변수를 차례로 빼고 학습 진행

- xgboost의 자체성능으로 LB는 1.94가 나왔음

# 폴더 5

## pycaret을 사용한 머신러닝

- 일단 한번 해봐야 할것 같아서 진행중
- 기본 pycaret 실습+ 결과에 소수점 2번째 자리까지 반올림 후 제출
- LB값 ![image-20220810153505845](D:\다운로드\image-20220810153505845.png)



# 폴더 6

## 파생변수 잔뜩생성

파생변수 60개 생성해서 train 데이터에 넣기

## 파생변수 잔뜩 생성 후 mlp와 xgboost 돌려보기

116개의 파생변수로 GridSearchCV MultiOutputRegressor 돌려서 제출해보기

![이미지 3](C:\Users\user\Documents\GitHub\Optimus\JongWon\폴더 6\이미지 3.png)

결과는 이러함

