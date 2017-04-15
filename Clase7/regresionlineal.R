datos<-read.csv(file.choose())
datos
attach(datos)
pairs(datos[,c(6,3,4)])

modelo1=lm(salary~yrs.since.phd)
modelo1
summary(modelo1)

modelo2=lm(salary~yrs.since.phd+yrs.service)
modelo2
summary(modelo2)

cor(yrs.service,yrs.since.phd)
