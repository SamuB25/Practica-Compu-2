print("Resumen de los datos:")
summary(mtcars$mpg)

plot(x = mtcars$wt, 
     y = mtcars$mpg,
     main = "Relación Peso vs. Consumo",
     xlab = "Peso (1000 lbs)",
     ylab = "Millas por Galón",
     col = "blue",
     pch = 19)


png("grafico_consumo.png")
plot(x = mtcars$wt, y = mtcars$mpg, main = "Peso vs. Consumo", col = "red", pch = 19)
dev.off()