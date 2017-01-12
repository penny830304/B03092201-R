# <- 代表 = 
# c 代表 連結
#註解

#R語言初體驗
x <- 5
X

#R的圖形
y <- c(1,2,3,4,5)
plot(y)

z <- c(2,4,6,8,10)
plot (y,z)

#R的圖形示範
dome(graphics)
#iris
date(iris)
plot(iris)

#R圖形dome
dome(graphics)

#Taiwan Map
install.packages("ggmap")
library(ggmap)
map.taiwan <- get_map(location="Taiwan",zoom=8)
ggmap(map.taiwan)

#套件安裝
install.packages("C50")
#套件載入
library(C50)
#套件刪除
remove.packages("C50")

#套件更新
update.packages()

#R練習
x <- 10
x
y <- x^2
y
z <- sprt(y)
z

#型態(mode)與長度(length)
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
x5 <- 4+21
mode(x5)
length(x5)
x6 <- c(1,2,3,4,5)
mode(x6)
length(x6)

#Vector(向量)
v <- c(10,5,3.1,6.4,9.2,21.7)
v
length(v)
mode(v)

#NA(缺值),索引,:
v <- c(10,5,NA,6.4,9.2,21.7)
v
v[2]
v2 <- 1:10
v2
v2[1]

#Matrix(矩陣)
x <- matrix(1:24, nrow = 4, ncol = 6, byrow = TRUE)
x
y <- matrix(1:24, nrow = 4, ncol = 6, byrow = FALSE)
y

#cbind()&rbind()
x1 <- c(1,2,3)
x2 <- c(4,5,6)
x3 <- c(7,8,9)
xc <- cbind(x1, x2, x3)
xc
xr <- rbind(x1, x2, x3)
xr

#轉置(Transposition)
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
z <- xc %% xr
z

#Array(陣列)
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

#Factor(因子)
x <- factor(c("男","女","男","男","女"))
x

#dataframe(資料框架)
id <- c(1,2,3,4)
age <- c(25,30,35,40)
sex <- c("Male","Mail","Female","Female")
pay <- c(30000,40000,45000,50000)

x_dataframe <- date.frame(id,age,sex,pay)
x_dateframe
x_dateframe[3,2]
x_dateframe[4,]
x_dateframe[2]
x_dateframesage
x_dateframe <- edit(x_dateframe)
x_dateframe

#list列表
id <- c(1,2,3)
sex <- c("male","male","female")
pay <- c(30000,40000,45000)
y_dataframe <- date.frame(id,sex,pay)
gender <- fator(c("男","男","女"))
Paul.Family <- list(name="Paul",wife"Iris",no.kids=3,kids.age=c(25,28,30),gender,y_dataframe)
Paul.Family

Paul.FamilySkids.age
Paul.Family[4]
Paul.Family[[4]]

Paul.FamilySkids.age[2]
Paul.Family[[4]][2]
#錯誤Paul.Family[4][2]

#CH2 資料的讀取與寫入
getwd()
getwd("c:/")
getwd()

x <- read.table("x.csv",sep=",",header = TRUE)
x
xSage
x[1, 2]

x <- read.table("X.csv",sep=",",header = FALSE) #錯的
x
str(x)

x <- read.csv("X.csv", header = TRUE)
x

x <- read.table("X.txt",header = TRUE) #錯的
x

x <- read.table("X.txt",sep="/t",header = TRUE)
x

x <- read.table("X,txt",header = TRUE)
x

x <- scan("X.txt")
x

write.table(x,"C:X_File.cSv",row.names = FALSE,col.names = FALSE,sep = ",")

x <- scan("x1.csv",sep = ",",what = list(id=integer(0),age=integer(0),pay=integer(0)))
x

write.table(x,"C:X_File.cSv",row.names = FALSE,col.names = TRUE,sep = ",")

#data()內建資料庫
date()

date(iris)
iris
str(iris)
summary(iris)

save(iris, file = "C:/iris.RData")
load("C:/iris.rdata", .GlobalEnv)
iris

#第三章控制流程
a <- c(1,2,3)
x <- a + 2
x

#()直接顯示結果
(x <- a+2)

#()結合命令
{a <- c(1,2,3); x <- a+2}
x
({a <- c(1,2,3); x <- a+2})

#if else
x <- 6
if (x<5) y=2 else y=4
y

x <- 3
if (x<5) y=10
y

x <- 3
y <-1
if (x<5 && y<5) {y <- 10; z <- 5}
y
z

x <- 20
y <- ifelse(x>5 , 2, 3)
y

if (x>5) y <- 2 else y <- 3
y


#第四章
demo(graphics)
demo(image)

#高階繪圖
y <- sin(1:20)
plot(y , type="l" , main="Sin Plot" , xlab="x"  , ylab="y")

#低階繪圖
title(sub="圖4-2")
points(5,05)

#互動式繪圖
plot(2,2)
pts <- locator (n=3)
pts

x <- c(1,3,5)
y <- c(5,3,5)
plot(x,y)
identify(x, y,"My Lbaels")