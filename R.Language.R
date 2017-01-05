#�Ҹ��D���q371�}�l
#R������
x <- 5
x
#R���Ϫ�
y <- c(1,2,3,4,5)
plot(y)

z <- c(2,4,6,8,10)
plot(y,z)

#R���ϧΥܽd
demo(graphics)

#iris
data(iris)
plot(iris)

#Taiwan map
install.packages("ggmap")
library("ggmap")
map.taiwan <- get_map(location="Taiwan", zoom=8)
ggmap(map.taiwan)

#�M��w��
install.packages("C50")

#�M����J
library(C50)

#�M�󲾰�
remove.packages("C50")

#�M���s
update.packages()




#R�m��
x <- 10
x
y <- x^2
y
z <- sqrt(y)
z

#���A(mode)�P����(length)
x1 <- 10
mode(x1)
length(x1)
x2 <- 10.11
mode(x2)
length(x2)
x3 <- T
x3
mode(x3)
length(x3)
x4 <- "Hello"
mode(x4)
length(x4)
x5 <- 4+2i
mode(x5)
length(x5)
x6 <- c(1,2,3,4,5)
mode(x6)
length(x6)

#vector(�V�q)
v <- c(10, 5, 3.1, 6.4, 9.2, 21.7)
v
length(v)
mode(v)

#NA(�ʭ�)
v <- c(10, 5, NA, 6.4, 9.2, 21.7)
v[2]
v2 <- 1:10
v2
v2[1]

#Matrix(�x�})
x <- matrix(1:24, nrow=4, ncol=6, byrow=TRUE)
x
y <- matrix(1:24, nrow=4, ncol=6, byrow=FALSE)
y

#cbind()&rbind()
x1 <- c(1,2,3)
x2 <- c(4,5,6)
x3 <- c(7,8,9)
xc <- cbind(x1, x2, x3)
xc
xr <- rbind(x1, x2, x3)
xr

#Transporition(��m)
xc_t <- t(xc)
xc_t

nrow(x)
ncol(x)
x[1,]
x[,2]
x[2,3]
eigen(xc)
xc
xr
z <- xc %*% xr
z

#Array(�}�C)
x <- 1:24
dim(x) <- c(4,6)
x
x <- array(1:24, dim=c(4,6))
x[2,4]
dim(x) <- c(3,4,2)
x <- array(1:24, dim=c(3,4,2))
x
x[2,3,1]
x[3,1,2]

x <- array(0, dim=c(4,6))
x

#Factor(�]�l)
x <- factor(c("�k","�k","�k","�k","�k"))
x


#dataframe(��Ʈج[)
id <- c(1, 2, 3, 4)
age <- c(25, 30, 35, 40)
sex <- c("Male", "Male", "Female", "Female")
pay <- c(30000, 40000, 45000 ,50000)
x_dataframe <- data.frame(id, age, sex, pay)
x_dataframe

x_dataframe[3,2]
x_dataframe[4,]
x_dataframe[2]
x_dataframe$age
x_dataframe <- edit(x_dataframe)
x_dataframe


#list�C��
id <- c(1, 2, 3)
sex <- c("male", "male", "female")
pay <- c(30000, 40000, 45000)
y_dataframe <- data.frame(id, sex, pay)
gender <- factor(c("�k","�k","�k"))
Paul.Family <- list(name="Paul", wife="Iris", no.kids=3 ,kids.age=c(25,28,30), gender, y_dataframe)
Paul.Family

Paul.Family$kids.age
Paul.Family[4]
Paul.Family[[4]]


Paul.Family$kids.age[2]
Paul.Family[[4]][2]
#���~Paul.Family[4][2]

#CH2 ��ƪ�Ū���P�g�J
getwd()
setwd("C:/")
getwd()

x <- read.table("X.csv", sep=",", header = TRUE)
x
str(x)
x$age
x[1, 2]

x <- read.table("X.csv", sep=",", header = FALSE) #����
x
str(x)

x <- read.csv("X.csv",  header = TRUE)
x

x <- read.table("X.txt", sep=" ", header = TRUE) #����
x

x <- read.table("X.txt", sep="\t", header = TRUE)
x

x <- read.table("X.txt", header = TRUE)
x

x <- scan("")
x

my <- scan(file = "",what=list(name="", pay=integer(0), sex=""))
my

x <- scan("X1.csv", sep=",")
x

x <- scan("X1.txt")
x

write.table(x, "c:/X_File.csv", row.names= FALSE, col.names = FALSE, sep=",")

x <- scan("X1.csv", sep=",", what=list(id=integer(0), age=integer(0), pay=integer(0)))
x

write.table(x, "c:/X_File1.csv", row.names= FALSE, col.names = TRUE, sep=",")

#data()���ظ�ƶ�
data()

data(iris)
iris
str(iris)
summary(iris)

save(iris, file="c:/iris.RData")
load("c:/iris.RData", .GlobalEnv)
iris


#�ĤT���y�{����
a <- c(1,2,3)
x <- a + 2
x

# ()������ܵ��G
(x <- a + 2)

# {}���X�R�O
{a <- c(1,2,3); x <- a + 2}
x

({a <- c(1,2,3); x <- a + 2})


#if else
x <- 6
if (x>5) y=2 else y=4
y

x <- 3
if (x<5) y=10
y

x <- 3
y <- 1
if (x<5 && y<5) {y <- 10 ;z <- 5}
y
z

x <- 20
y <- ifelse (x>5, 2, 3)  #if (x>5) y <- 2 else y <-3
y

#switch
x <- 1
switch(x, 5, sum(1:10), rnorm(5))

x <- 2
switch(x, 5, sum(1:10), rnorm(5))

x <- 3
switch(x, 5, sum(1:10), rnorm(5))

x <- 4
switch(x, 5, sum(1:10), rnorm(5)) 

y <- 1
switch(y, juice="Apple", meat="Pork") 

y <- "juice"
switch(y, juice="Apple", meat="Pork") 

#for
x <- 0
for(i in 1:5) x <- x+ i
x

x <- 0
y <- 0
for(i in 1:5) {x <- x+i; y <- i^2}
x
y

#while
sum <- 0
i <- 1
while (i<=10) {sum <- sum + i; i <- i+1}
sum

#repeat
sum <- 0
i <- 1
repeat{
  sum <- sum + i
  i <- i+1
  if (i>10) break
}
sum

#%%�l�� %/%��
sum <- 0
for (i in 1:50){
  if(i%%2==0) next
  sum <- sum+i
}
sum

#apply
x <- array(1:24, dim =c(4,6))
x
apply(x,1,sum)
apply(x,2,sum)

#�ۭq���
myfun <- function(x) {y <- x+2;return(y)}
myfun(1)
myfun(100)
myfun()#erro

myfun <- function(x=1) {y <- x+2;return(y)}
myfun(50)
myfun()

# <<-���ܨ�ƥ~������
x<-1
myfun <- function(x) {x<-2 ; print(x)}
myfun(x)
x
x<-1
myfun<-function(x){x<<-2 ; print(x)}
myfun(x)
x

#factorial����
factorial <- function(x=1){
  y<-1
  for(i in 1:x) y<-y*i
  return(y)
}
factorial(5)
factorial(10)

#�ĥ|��
demo(graphics)
demo(image)

#����ø��
y <- sin(1:20)
plot(y, type="l",main="sin plot", xlab="X" , ylab="Y")

#�C��ø��
title(sub="��4-2")
points(5,0.5)


#���ʦ�ø��
plot(2,2)
pts <- locator(n=3)
pts

x<- c(1,3,5)
y<- c(5,3,5)
plot(x,y)
identify(x,y,"My Labels")

#�Ҹ��D��
#1
setwd("c:/cert/")
x<-read.csv("A-1.csv",header=FALSE)#header�O���D
x
str(x)#��ƫ��A
x<-as.matrix(x)#��Ƹ�ƫ��A
mean(x)#������
summary(x)#�K�n

#2
setwd("c:/cert/")
x<-read.csv("A-3.csv",header=FALSE)
x
str(x)
x<-as.matrix(x)
max(x)

#3
setwd("c:/cert/")
x<-read.csv("A-4.csv",header=FALSE)
x
str(x)
x<-as.matrix(x)
quantile(x,0.25) #�D�ĤG����Z ans:13.5
summary(x)

#4
setwd("c:/cert/")
x<-read.csv("A-5.csv",header=TRUE)
x
str(x)
x<-as.matrix(x)
max(x)-min(x)

#5
setwd("c:/cert/")
x<-read.csv("A-6.csv",header=FALSE)
x
str(x)
x<-as.matrix(x)
var(x)#�ܲ���

#6
setwd("c:/cert/")
x<-read.csv("C-1.csv",header=TRUE)
x
hour<-x[2]
grade<-x[3]
cor(hour,grade)
cor(grade,hour)

#7 List�u�ʳ̤j

#8 R���j����Ofor while repeat

#9 NA=�ŭ�
x<-2
if(x<3) y=NA else y=5
print(y)

#10 ���h(���j�禡)4!
exec <- function(x){
  if(x==0) x_sum=1
  else
    x_sum=x*exec(x-1)
    return(x_sum)
}
exec(4)

#11 na.rm=TRUE

#12 �}�C 1-12����ƦC
a <-matrix(1:12,nrow=3,by=TRUE)
a
apply(a,1,sum)#1�N���C���[�`
apply(a,2,sum)#2�N���檺�[�`

#13 1�X�{3��,2�X�{2��,3�X�{2��
x<-c(1,1,1,3,2,2,3)
table(x)

#14 (identity)���ʦ�ø�� hist plot pairs

#15 2x3 matrix
x<-c(1,2,5)
y<-c(3,5,10)
(rbind(x,y))

#16
x<-c(1,2,3)
summary(x)

#17 ���ѲŸ�#

#18 p.1-3 �ܼƫŧi�Ĥ@�Ӧr�������^��r���Ϊ̥y�I.

#19 �e���P�_���߬�2�_�h��3
ifelse(2>=3,2,3)

#20
x1<-9%%5 #�l��
x2<-9%/%2 #��
x1
x2
x<-(9/2)#��X��
x
