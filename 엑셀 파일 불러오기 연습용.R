install.packages("readxl") #인스톨-패키지(사용 가능한 명령어 모음)를 다운받아라, xl 엑셀파일
library(readxl) #라이브러리-패키지 중에서 필요한 명령어 모음, 꼭 필요한 만큼만 다운받아야 하며, 그렇지 않으면 컴퓨터가 느려진다.
test <- read_excel("./teacher/Data/excel_exam.xlsx") #./현재 디렉팅을 의미, 프로젝트를 만든 위치, 확장자까지 끝까지 작성
view(test) #뷰는 어떠한 결과값을 보여달라는 뜻입니다.
#1,2 번은 했음으로 3,4번만 자료를 받아서 실행하면 된다.