library(LRCUDA)
library(snow)
load("~/workspace/Colon.RData")
result <- LRCUDA(colon[,1:2000], colon[,2001], error.threshhold = 62, device.id = c(0,1,2,3))
save(result, file = "MultipleGPUResult.RData")
