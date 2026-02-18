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

resumen_mtcars <- mtcars %>%
  group_by(cyl) %>%
  summarise(
    conteo = n(),
    promedio_hp = mean(hp),
    sd_hp = sd(hp),
    min_hp = min(hp),
    max_hp = max(hp)
  )

suma_de_valores= 2+2 #prueba 
