library('dplyr')
library(ggplot2)

par(mfrow = c(1,2))

### Clean Original Data ###
mousecoord1 = read.csv("C:/Users/Nathan Gin/Downloads/20230112_145948DLC_resnet50_UCI_HD_LabelMay19shuffle1_166500.csv", header = TRUE)
mousesum = mousecoord1
names(mousecoord1) <- mousecoord1[1,]
mousecoord1 <- mousecoord1[-1,]


mousesum <- mousesum[-1,]
mousesum <- mousesum[-1,]
mousesum <- mousesum %>% mutate_if(is.character, as.numeric)
summary(mousesum)

### Likelihood boxplots ###
par(mfrow = c(1,1))

liklihoods <- mousesum
liklihoods <- liklihoods[,c(4,7,10,13,16,19,22,25)]
colnames(liklihoods) <- c("Nose", "FrontLeft", "FrontMiddle", "FrontRight", "BackLeft", "BackMiddle", "BackRight", "Tail")

par(mar=c(6,5,3,1)+.1)
boxplot(liklihoods, las = 2, ylab = "Likelihood", main = "Likelihood Distribution By Skeletal Structure (Training)", col = 
          c("#7c06ff", "#3c68f9" ,"#09bee9" ,"#53f1c7", "#99fca6", "#e4cf74", "#ff793e", "#f60804"), ylim = c(0,1))
mtext("Body Part", side = 1, line = 7)

liklihoods <- liklihoods[-c(1:400),]
boxplot(liklihoods, main = "Pixel Difference Between Frames (Testing)")


### Clean Nose Body Part ###

Nose <- mousecoord1
colnames(Nose) <- c("Bodyparts", "Nose x", "Nose y", "Nose Like")
Nose <- Nose %>% select(c(1:4))
names(Nose) <- Nose[1,]
Nose <- Nose[-1,]

Nose <- transform(Nose, coords = as.numeric(coords), 
                  x = as.numeric(x),
                  y = as.numeric(y),
                  likelihood = as.numeric(likelihood))

qplot(Nose$coords, Nose$y)

plot(Nose$coords, Nose$x)
plot(Nose$coords, Nose$y)
plot(Nose$coords, Nose$likelihood)


summary(Nose)


### Clean Front Left Paw ###
FL <- mousecoord1
FL <- FL %>% select(c(1, 5:7))
colnames(FL) <- c("Bodyparts", "FL x", "FL y", "FL Like")
names(FL) <- FL[2,]
FL <- FL[-1,]
FL <- FL[-1,]


FL <- transform(FL, coords = as.numeric(coords), 
                  x = as.numeric(x),
                  y = as.numeric(y),
                  likelihood = as.numeric(likelihood))

plot(FL$coords, FL$x)
plot(FL$coords, FL$y)
plot(FL$coords, FL$likelihood)

### Clean FM Paw ###
FM <- mousecoord1
FM <- FM %>% select(c(1, 8:10))
colnames(FM) <- c("Bodyparts", "FM x", "FM y", "FM Like")
names(FM) <- FM[2,]
FM <- FM[-1,]
FM <- FM[-1,]


FM <- transform(FM, coords = as.numeric(coords), 
                  x = as.numeric(x),
                  y = as.numeric(y),
                  likelihood = as.numeric(likelihood))

plot(FM$coords, FM$x)
plot(FM$coords, FM$y)
plot(FM$coords, FM$likelihood)

### Clean Tail Paw ###
Tail <- mousecoord1
Tail <- Tail %>% select(c(1, 23:25))
colnames(Tail) <- c("Bodyparts", "Tail x", "Tail y", "Tail Like")
names(Tail) <- Tail[2,]
Tail <- Tail[-1,]
Tail <- Tail[-1,]


Tail <- transform(Tail, coords = as.numeric(coords), 
                x = as.numeric(x),
                y = as.numeric(y),
                likelihood = as.numeric(likelihood))

plot(Tail$coords, Tail$x)
plot(Tail$coords, Tail$y)

Tail <- Tail[-c(1:400),]
plot(Tail$coords, Tail$x)
plot(Tail$coords, Tail$y)


plot(Tail$coords, Tail$likelihood)

### ### ### ### ### ### ### ### ### ### ### ### ### ### ### ### ### ### ### ### ###


### Clean Test Data ###
mousetest = read.csv("C:/Users/Nathan Gin/Downloads/test_video3DLC_resnet50_UCI_HD_LabelMay19shuffle1_166500.csv", header = TRUE)
mousetestsum = mousetest
names(mousetest) <- mousetest[1,]
mousetest <- mousetest[-1,]

mousetestsum <- mousetestsum[-1,]
mousetestsum <- mousetestsum[-1,]
mousetestsum <- mousetestsum %>% mutate_if(is.character, as.numeric)
summary(mousetestsum)

### Likelihood boxplots Test ###

testliklihoods <- mousetestsum
testliklihoods <- testliklihoods[,c(4,7,10,13,16,19,22,25)]

colnames(testliklihoods) <- c("Nose", "FrontLeft", "FrontMiddle", "FrontRight", "BackLeft", "BackMiddle", "BackRight", "Tail")
boxplot(testliklihoods, las = 2, ylab = "Likelihood", main = "Likelihood Distribution By Skeletal Structure (Testing)", 
        col = c("#7c06ff", "#3c68f9" ,"#09bee9" ,"#53f1c7", "#99fca6", "#e4cf74", "#ff793e", "#f60804"), ylim = c(0,1))

testliklihoods <- testliklihoods[-c(1:200),]
boxplot(testliklihoods)

### Clean Nose Body Test ###

testNose <- mousetest
colnames(testNose) <- c("Bodyparts", "testNose x", "testNose y", "testNose Like")
testNose <- testNose %>% select(c(1:4))
names(testNose) <- testNose[1,]
testNose <- testNose[-1,]

testNose <- transform(testNose, coords = as.numeric(coords), 
                  x = as.numeric(x),
                  y = as.numeric(y),
                  likelihood = as.numeric(likelihood))

qplot(testNose$coords, testNose$y)

plot(testNose$coords, testNose$x)
plot(testNose$coords, testNose$y)
testNose <- testNose[-c(1:200),]
plot(testNose$coords, testNose$x)
plot(testNose$coords, testNose$y)

summary(testNose)
