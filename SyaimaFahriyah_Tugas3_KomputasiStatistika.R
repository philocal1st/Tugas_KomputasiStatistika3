#memanggil data airquality
data("airquality")
head(airquality)

#melihat struktur data airquality
str(airquality)

#membuat histogram dengan variabel wind
#beserta densitynya
hist(airquality$Wind,
     probability = T,
     main = "Hist + Density Wind",
     xlab = "Wind",
     ylab = "Density")

#membuat density
dens <- density(airquality$Wind, na.rm = T)

#jika menambahkan kurva density
lines(dens,col = "blue", lwd = 2)

#membuat boxplot dan steam n leaf
boxplot(airquality$Wind,
        horiz = T,
        main = "Boxplot Wind",
        xlab = "Wind")


#stem-and-leaf
stem(airquality$Wind)

#Membuat scatterplot
plot(airquality$Wind, airquality$Ozone,
     main = "Scatter plot Wind terhadap Ozone",
     xlab = "Wind(mph)",
     ylab = "Ozone(pbb)",
     pch = 16)
abline(lm(Ozone~Wind, data = airquality),
       lwd = 2)

#alternatif
plot(Ozone ~ Wind,
     data = airquality,
     pch = 16,
     main = "Scatter Pllot Ozone thdp Wind",
     xlab = "Wind",
     ylab = "Ozone")