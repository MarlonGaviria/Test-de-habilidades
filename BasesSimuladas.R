
p <- data.frame()

m1 <- sample(90:130,size = 100, replace = T)
m2 <- sample(70:140,size = 100, replace = T)
for(i in 1:100){
        persona <- data.frame(id=i,
                              presion = round(rnorm(60,m1[i],5),0),
                              azucar = round(rnorm(60,m2[i],15),1))
        p <- rbind(p,persona)
        p
}

write.csv(p,'D:/Escritorio/pacientes.csv')


pres <- vector()
azuc <- vector()
for(i in 1:100) pres[i]=round(rnorm(1,m1[i],5),0)
for(i in 1:100) azuc[i]=round(rnorm(1,m2[i],5),1)
doctor <- data.frame(id = 1:100,
                     genero = rep(c('Hombre','Mujer'),50),
                     presion_mes1 = pres,
                     presion_mes2 = round(pres+rnorm(100,2,1),0),
                     azucar_mes1 = azuc,
                     azucar_mes2 = round(azuc + rnorm(100),1),
                     edad = sample(24:56,100,replace = T)
)
write.csv(doctor,'D:/Escritorio/doctor.csv')
