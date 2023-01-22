# Lien du cours https://im2ag-moodle.univ-grenoble-alpes.fr/enrol/index.php?id=505
#faut s'inscrire et avec tes identifiants moodle ça marche

#Ex 1

#1
plot(x,y)

#2
lm(y~x)
plot(lm(y~x))
plot(x,y)
abline(lm(y~x))
abline(lm(y~poly(x,20)))

#Le modèle ne semble pas satisfaisant

#3
d.list = seq(1,20)

MSE = rep(0, length(d.list))

for(i in 1:length(d.list)){
  d = d.list[i]
  fit.model = lm(y~poly(x,i))
  MSE[i] = mean(fit.model$residuals^2) 
}
plot(MSE)
#On constate que l'erreure diminue avec le degré du polynôme

#4 (pas sur que ça soit bon)
x.test

d.list.test = seq(1,20)

MSE.test = rep(0, length(d.list.test))

for(i in 1: length(d.list.test)){
  d = d.list.test[i]
  fit.model = lm(y~poly(x,i))
  y_pred = predict(fit.model, newdata = data.frame(x = x.test))
  MSE.test[i] = mean((y_pred-y.test)^2)
}
plot(MSE.test)

