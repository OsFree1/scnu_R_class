library(readxl)
exam <- read.csv("./scnu_R_class-master/Data/csv_exam.csv", fileEncoding = "euc-kr") #R은 리눅스 기반이라, 윈도우 기반으로 포팅하기 위해서는 fileEncoding을 통해 파일을 인코딩해서 형식을 바꾸어주어야 한다.
View(exam) #전체 데이터 프레임 보여주기
head(exam) #위에서부터 6개의 데이터 프레임 보여주기
tail(exam) #뒤에서부터 6개의 데이터 프레임 보여주기
head(exam, 10) #위에서부터 10개의 데이터 프레임 보여주기, 10개 대신 임이의 숫자 가능
tail(exam, 10) #뒤에서부터 10개의 데이터 프레임 보여주기, 10개 대신 임이의 숫자 가능

summary(exam) #spss의 기술통계로, 통계를 요약해서 보여준다.
max(exam$math) # 전체 통계중 특정값만을 보고싶다- 특정값을 뜻하는 명령어(전체 통계$특정 통계) #$표시는 전체 값에서 특정 변수 값을 표현할 떄 쓴다. 이건 수학 변수에서 최대값
min(exam$english)  #영어 변수에서 최소값

install.packages("ggplot2") 
mpg <- as.data.frame(ggplot2::mpg)
View(mpg)

dim(mpg) #현재 불러온 데이터가 몇 행, 몇 열로 이뤄졌는지 알 수 있음
summary(mpg)

install.packages("dplyr")
library(dplyr)

df_raw <- data.frame(var1=c(1,2,3),
                     var2=c(2,3,2))

df_raw
df_new <- df_raw #원본을 건들기 싫을때 복사하는, 대입하는 거
df_new

df_new <- rename(df_new, v2 = var2)
df_new

df_new$var_sum <- df_new$var1 + df_new$v2 # 새로운 변수를 만들려면
df_new