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
exam %>% filter(class==1 & math > 50)  #,와 &은 같다.
exam %>% filter(math >= 90 | english >= 90 ) # >=은 이상, >은 초과, |은 "가 또는 나" 할 떄의 또는
exam %>% filter(class==1 | class==3 | class==5) #줄이는 방법은 및에
exam %>% filter(class %n% c(1,3,5))  #%n%은 전체 데이터에 다음 데이터가 들어가느냐는 뜻
class1 <- exam %>% filter(class==1)  #1,2반을 전체 데이터에서 추출하여  클래스로 묶는다.
class2 <- exam %>% filter(class==2)
mean(class1$math)  #클래스1의 수학 평균을 구하라
mean(class2$math)

mpg  <- as.data.frame(ggplot2::mpg )
class4 <- mpg %>% filter(displ <= 4)
class5 <- mpg %>% filter(displ >= 5)
mean(class4$hwy)
mean(class5$hwy)

mpg_audi <-mpg %>% filter(manufacturer=="audi")  #문자임으로 따옴표 필수!
mpg_toyota <-mpg %>%filter(manufacturer=="toyota")

mean(mpg_audi$hwy) #값을 구할시 데이터 추출을 위한 $ 뺴먹지 말것.
mean(mpg_toyota$hwy)

#문제 하나 빼먹음


exam %>% select(math)  #시험 중에서 수학만 선택해라(셀렉트)
exam %>% select(english)
exam %>% select(class, math, english)
#변수 제거하기 -붙이면 변수를 뺴버린다.
exam %>% select(-math)
exam %>% select(-math, -english)
exam %>% select(-math, -english, -class)
exam %>% 
  filter(class==1) %>%  #1반만 추출
  select(english)   #영어만 선택

exam %>%
  select(id,math)  #아이디와 수학만 추출
  head(10) # 헤드 뒤에 exam이 들어가 있으나, 앞의 %>%으로 인해 생략되었다. 

