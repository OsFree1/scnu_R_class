english <- c(90,80,60,70)
english # 변수 확인
math <- c(50,60,100,20)
math #재차 확인 #C는 임의 수를 변수에 입력할 떄 쓰는 함수
class <- c(1,1,2,2)
class

d_frame <- data.frame(english, math, class)
d_frame

mean(d_frame$english) #mean은 평균을 구하라는 명령어

d_frame_02 <- data.frame(english=c(90,50,10,30), math=c(70,80,90,70),class=c(1,1,2,2))
d_frame_02
Library(readxl)




read_sheet <- read_excel("./0203 sample data.xlsx",sheet=3) #sheet는 따로 콤마로 표시해야 함
View(read_sheet)
