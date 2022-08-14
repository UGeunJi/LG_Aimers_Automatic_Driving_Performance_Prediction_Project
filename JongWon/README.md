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
- LB값 ![image-20220810153505845](https://user-images.githubusercontent.com/76269640/184179782-be6d6edc-ec61-4ae1-af91-13b3366c2b6f.png)



# 폴더 6

## 파생변수 잔뜩생성

파생변수 60개 생성해서 train 데이터에 넣기

## 파생변수 잔뜩 생성 후 mlp와 xgboost 돌려보기

116개의 파생변수로 GridSearchCV MultiOutputRegressor 돌려서 제출해보기

![이미지 3](https://user-images.githubusercontent.com/76269640/184179960-daee801b-0325-4e14-b0a2-268c54b9cefc.png)

결과는 이러함

# 폴더7

## 상민님의 결과에 보탬이 되기위한 시각화

- 이상치들을 y 컬럼별로 정리하였음

## 간단한 사용예제

- y컬럼별로 메타데이터에 들어가 있지 않은 데이터들은 행별로 삭제
- 걸러진 데이터로 모델생성후 train 데이터 전체로 score 확인 ====> 1.7355972148727803
- 하지만 리더보드는 성능이 않좋음
- ![image](https://user-images.githubusercontent.com/76269640/184179157-c000a296-c01d-419b-9743-9b8ede1dc346.png)

## 간단한 EDA

- 범위내 범위 밖 데이터에 대한 그래프를 하나하나 살펴보기 + train데이터와 test 데이터의 분포 살펴보기

# 폴더 8

![image-20220813002456949](C:\Users\user\AppData\Roaming\Typora\typora-user-images\image-20220813002456949.png)

![image-20220813002604775](C:\Users\user\Documents\GitHub\Optimus\JongWon\폴더 8\image-20220813002604775.png)

## 표준화 빡시게 해서 학습하기



## 정규화 빡시게 해서 학습하기

- [평균정규화로 Pandas 데이터 프레임 정규화](https://www.delftstack.com/ko/howto/python-pandas/pandas-normalize/#%ED%8F%89%EA%B7%A0%EC%A0%95%EA%B7%9C%ED%99%94%EB%A1%9C-pandas-%EB%8D%B0%EC%9D%B4%ED%84%B0-%ED%94%84%EB%A0%88%EC%9E%84-%EC%A0%95%EA%B7%9C%ED%99%94)
- [`최소-최대`정규화로 Pandas 데이터 프레임 정규화](https://www.delftstack.com/ko/howto/python-pandas/pandas-normalize/#%EC%B5%9C%EC%86%8C-%EC%B5%9C%EB%8C%80%EC%A0%95%EA%B7%9C%ED%99%94%EB%A1%9C-pandas-%EB%8D%B0%EC%9D%B4%ED%84%B0-%ED%94%84%EB%A0%88%EC%9E%84-%EC%A0%95%EA%B7%9C%ED%99%94)
- [`quantile` 정규화로 Pandas 데이터 프레임 정규화](https://www.delftstack.com/ko/howto/python-pandas/pandas-normalize/#quantile-%EC%A0%95%EA%B7%9C%ED%99%94%EB%A1%9C-pandas-%EB%8D%B0%EC%9D%B4%ED%84%B0-%ED%94%84%EB%A0%88%EC%9E%84-%EC%A0%95%EA%B7%9C%ED%99%94)

보통 데이터는 통상적으로는 **표준화를 통해 이상치를 제거하고, 그 다음 데이터를 정규화 해 상대적 크기에 대한 영향력을 줄인 다음 분석을 시작한다**고 한다.

## pca 분석

-  pca 36일때

- ![image-20220814002741007](C:\Users\user\AppData\Roaming\Typora\typora-user-images\image-20220814002741007.png)

- pca 1 일때

  ![image-20220814002813214](C:\Users\user\AppData\Roaming\Typora\typora-user-images\image-20220814002813214.png)





# 폴더 9

## 세개 변수로 pca 후 분석

대부분의 데이터를 보면 

![image-20220814003140324](C:\Users\user\AppData\Roaming\Typora\typora-user-images\image-20220814003140324.png)

Y_01과 Y_02와 Y_03의 데이터의 rmse가 높게 나온다.





----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

- Y_01을 잘 설명하는 데이터는 다음과 같다.

  

![image-20220814003402079](C:\Users\user\AppData\Roaming\Typora\typora-user-images\image-20220814003402079.png)

1,2,3,4 순서대로 X_18, X_22, X_20, X_52 순서이다.

- Y_02을 잘 설명하는 데이터는 다음과 같다.

![image-20220814003506375](C:\Users\user\AppData\Roaming\Typora\typora-user-images\image-20220814003506375.png)

1,2,3,4 순서대로X_22,X_20, X_18, X_14 순서이다.

- Y_03을 잘 설명하는 데이터는 다음과 같다.

![image-20220814003614159](C:\Users\user\AppData\Roaming\Typora\typora-user-images\image-20220814003614159.png)

1,2,3,4 순서대로X_18,X_22, X_43, X_19 순서이다.(6등으로 X_20도 존재)



- 공통점을 보았을때 X_18, X_22,X_20데이터는 항상 존재한다.

  

-> pca 분석을 위 세개의 설명

![image-20220814004921667](C:\Users\user\AppData\Roaming\Typora\typora-user-images\image-20220814004921667.png)

(성능이 잘 나오지 않는다)



