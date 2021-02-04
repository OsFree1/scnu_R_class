library(dplyr)
library(ggplot2)
head(mpg) #어제 배운 거 복습 mpg는 미국 자동차회사에서 배포한 무료 자료
tail(mpg)
View(mpg) #View는 자료를 보여준다
dim(mpg) #통계의 요소
summary(mpg) #기술통계
df_raw <- data.frame(var1=c(1,2,3),  #df_raw 는 데이터 프레임 원본이고 프레임은 변수 삽입
                     var2=c(2,3,4))
df_raw
df_new <- rename(df_new, v2=var2)  #var2를 v2로 수정하라
df_new
install.packages("ggplot2") 
mpg <- as.data.frame(ggplot2::mpg)  #mpg데이터 불러오기
mpg_new <- mpg    #mpg 데이터 복사하기
mpg_new <- as.data.frame(ggplot2::mpg) #데이터 프레임 생성
mpg_new <- data.frame(ggplot2::mpg)
rename(mpg_new,cty=city, hwy=highway )
#아직 부족
mpg_new <- rename(df_mpg, cty=city, hwy=highway)
#변수 조형을 통한 파생변수
df <- data.frame(var1=c(3,4,5),
                 var2=c(4,6,7))
df$sum <- df$var1+df$var2  #$변수 삽입으로, sum이라는 변수는 var1변수에 var2변수를 더하라
df$sum

mpg<- as.data.frame(ggplot2::mpg)
mpg$total <- (mpg$cty + mpg$hwy) #통합 연비 변수 생성
head(mpg$total) #연비 상위 여섯개
min(mpg$total)  # 연비 평균

summary(mpg$total)  #전체 요약 통계
hist(mpg$total)  #히스토그램 생성

#조건부 변수
ifelse(mpg$total >=20, "pass","fall") #ifelse 알스튜디오에서의 조건문 생성 명령어로, 여기서는 20 이상이면 패스, 20미만이면 탈락이라는 뜻
ifelse(mpg$total >=20, "pass","fall") <=as.data.frame(mpg$test) <= #추후 수정 필요
mpg$grade2 <- ifelse(mpg$total >= 30, "A"),     #전체 갑에서 30이상이면 A,25이상B,20이상 C
                     ifelse(mpg$total >=25, "B"),
                     ifelse(mpg$total >=20, "c","D")
mpg$grade2  #이것도 다시
library(ggplot2)
midwest  <- as.data.frame(ggplot2::midwest )
dim(midwest)
str(midwest)
summary(midwest)
head(midwest)
tail(midwest)
midwest <- rename(midwest, total=poptotal , asian=popasian)
midwest$rate <- midwest$asian/midwest$total*100   #명령어는 임의로, 백분률은 공식대로
hist(midwest$rate)
mean(midwest$rate) #아시안 평균인구
midwest$group <- ifelse(midwest$rate > mean(midwest$rate), "large",  #평균치보다 증감 표시
                      midwest$rate < mean(midwest$rate), "small")
table(midwest$group)  #위의 내용을 보여주어라
aplot(midwest$group)  #그래프로 표시하라

library(dplyr)
exam <- read.csv("./scnu_R_class-master/Data/csv_exam.csv")
exam %>% filter(class==1)  #파이프 함수로, 변수를 추출하는 표시 ==1, 1반만
exam %>% filter(class!=1)   #1반 제외한 나머지



