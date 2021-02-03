install.packages("imager")
install.packages("magick")
library(imager)

img_path <- "./img/img/pinwheel.png"  # 이미지의 위치 설정
img <- load.image(img_path)    # 이미비 불어오기
plot(img)    # 이미지 표시하기

img <- resize(img, size_x = 400L, size_y = 400L) #resize는 이미지의 크기를 조정하는 명령어로, 순서대로 x축, y축, z축이다.
plot(img, xlim=c(0,400), ylim=c(0,400))      #이미지 표시, lim은 축의 크기 조정

angle <- 0     #각도 관련 명령어  #while은 괄호 안의 값이 참일떄, 대괄호 안의 과정을 반복하라 즉 애니메이션 재생 관련 명령어 이다.
while(TRUE){
  angle <- angle + 10     
  imrotate(img, angle, cx=200, cy=200) %>% plot(axes=FALSE) #plot(axes=False)는 축을 지우라는 명령이다.
  Sys.sleep(0.4)
  }
 #imrotate는 그림을 돌리라는 뜻으로, x축과 y축 중심, 기울기, 속도를 입력한다. Sys.sleep(0.4)는 0.4초에 한번씩 보여준다는 뜻이다.