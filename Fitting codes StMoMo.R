############################
### FITTING FEMALES SpAin ##
############################

library(demography)
library(StMoMo)
library(lifecontingencies)

## Spain Data from Human Mortality Database

ESPdata <- hmd.mx(country = 'ESP', 
                  username = "vuulenbak42@hotmail.com",
                  password = "testEAA")

#####################################
### How data looks like - Mujeres ###
#####################################
head(ESPdata$rate$female)

## Grafico

plot(ESPdata, series = 'female')


## Fitting Lee-Carter 
ESP_FEMale <- StMoMoData(ESPdata, series = 'female')

## Fitting Males
LC_FEMale_fit <- fit(lc(), data = ESP_FEMale, 
                   ages.fit = 40:100,years.fit = 1990:2019)

## Plot of parameters of Lee-Carter
plot(LC_FEMale_fit)

## Fitting Renshaw-Haberman
RH_FEMale_fit <- fit(rh(), data = ESP_FEMale, 
                   ages.fit = 40:100, years.fit = 1990:2019)

## Plot od parameters of Renshaw-Haberman
plot(RH_FEMale_fit)


## Fitting of CBD
CBD_FEMale_fit <- fit(cbd(link = 'log'), 
                    data = ESP_FEMale, ages.fit = 60:109, 
                    years.fit = 1980:2019)

plot(CBD_FEMale_fit)


## Fitting of APC
APC_FEMale_fit <- fit(apc(), data = ESP_FEMale, 
                    ages.fit = 60:109, years.fit = 1980:2019)

plot(APC_Male_fit)

## Fitting M7
M7_FEMale_fit <- fit(m7(link = 'log'), data = ESP_FEMale, 
                   ages.fit = 60:100, years.fit = 1980:2019)

plot(M7_FEMale_fit)

# ## Fitting Plat Model
# f2 <- function(x, ages) mean(ages) - x
# constPlat <- function(ax, bx, kt, b0x, gc, wxt, ages) {
#         nYears <- dim(wxt)[2]
#         x <- ages
#         t <- 1:nYears
#         c <- (1 - tail(ages, 1)):(nYears - ages[1])
#         xbar <- mean(x)
#         #nsum g(c)=0, nsum cg(c)=0, nsum c^2g(c)=0
#         phiReg <- lm(gc ~ 1 + c + I(c^2), na.action = na.omit)
#         phi <- coef(phiReg)
#         gc <- gc - phi[1] - phi[2] * c - phi[3] * c^2
#         kt[2, ] <- kt[2, ] + 2 * phi[3] * t
#         kt[1, ] <- kt[1, ] + phi[2] * t + phi[3] * (t^2 - 2 * xbar * t)
#         ax <- ax + phi[1] - phi[2] * x + phi[3] * x^2
#         #nsum kt[i, ] = 0
#         ci <- rowMeans(kt, na.rm = TRUE)
#         ax <- ax + ci[1] + ci[2] * (xbar - x)
#         kt[1, ] <- kt[1, ] - ci[1]
#         kt[2, ] <- kt[2, ] - ci[2]
#         list(ax = ax, bx = bx, kt = kt, b0x = b0x, gc = gc)
# }
# PLAT <- StMoMo(link = "log", staticAgeFun = TRUE,
#                periodAgeFun = c("1", f2), cohortAgeFun = "1",
#                constFun = constPlat)
# 
# PLAT_Male_fit <- fit(PLAT, data = ESP_Male, 
#                ages.fit = 60:109, years.fit = 1980:2019)
# 
# 
# plot(PLAT_Male_fit)


###################
# Model Selection #
###################

LC_res_females <- residuals(LC_FEMale_fit)
RH_res_females <- residuals(RH_FEMale_fit)
CBD_res_males <-residuals(CBD_Male_fit)
APC_res_males<- residuals(APC_Male_fit)
M7_res_males <- residuals(M7_Male_fit)
#PLAT_res_male <- residuals(PLAT_Male_fit)

## Colourmap - It should show randoms patterns
plot(LC_res_males, type='colourmap', reslim=c(-3.5, 3.5), 
     main = 'LC Models ESPAÑA - colourmap')
plot(RH_res_males, type = 'colourmap', reslim=c(-3.5, 3.5), 
     main = 'RH Models ESPAÑA - colourmap')
plot(CBD_res_males,type = 'colourmap', reslim=c(-3.5, 3.5),
     main = 'CBD Models ESPAÑA - colourmap')
plot(APC_res_males,type = 'colourmap', reslim=c(-3.5, 3.5), 
     main = 'APC Models ESPAÑA - colourmap')
plot(M7_res_males, type = 'colourmap', reslim=c(-3.5, 3.5), 
     main = 'M7 Models ESPAÑA - colourmap')

## Scatter Plot of Models
plot(LC_res_females, type='scatter', reslim=c(-3.5, 3.5),
     main = 'LC Models ESPAÑA - FEMALES')
plot(RH_res_females, type = 'scatter', reslim=c(-3.5, 3.5),
     main = 'RH Models ESPAÑA - FEMALES')
plot(CBD_res_males,type = 'scatter', reslim=c(-3.5, 3.5),
     main = 'CBD ESPAÑA - residuos')
plot(APC_res_males,type = 'scatter', reslim=c(-3.5, 3.5),
     main = 'APC Model ESPAÑA - residuos')
plot(M7_res_males, type = 'scatter', reslim=c(-3.5, 3.5), 
     main = 'M7 Model ESPAÑA - residuos')
#plot(PLAT_res_male, type = 'scatter', reslim=c(-3.5, 3.5), 
#    main = 'PLAT Model ESPAÑA - residuos')


### Bondad del Ajuste - aics menores
aics <- c(AIC(LC_FEMale_fit), AIC(RH_FEMale_fit), 
          AIC(CBD_Male_fit), AIC(APC_Male_fit), 
          AIC(M7_Male_fit))#, AIC(PLAT_Male_fit))
bics <- c(BIC(LC_FEMale_fit), BIC(RH_FEMale_fit), 
          BIC(CBD_Male_fit), BIC(APC_Male_fit),
          BIC(M7_Male_fit))#, BIC(PLAT_Male_fit))
bondad <- matrix(c(aics, bics), nrow = 2, 5, byrow = TRUE)
colnames(bondad) <- c('LC_MALES', 'RH_MALES', 'CBD_MALES',
                      'APC_MALES', 'M7_MALES')#, 'PLAT_MALES')
rownames(bondad) <- c('AIC', 'BIC')
bondad

#####################
#### Forecast qx  ###
#####################

LC_pred_females <- forecast(LC_FEMale_fit, h=80)
RH_pred_females <- forecast(RH_FEMale_fit, h=80, 
                          gc.order = c(1,1,0), 
                          gc.include.constant = TRUE)
# M7_pred_females <- forecast(M7_FEMale_fit, h=53,
#                            gc.order = c(1,1,0),
#                            gc.include.constant = TRUE
#                           )
#PLAT_pred_males <- forecast(PLAT_Male_fit, h=50, 
#                           gc.order = c(2, 0, 0))

# Plot of forecast
plot(LC_pred_males)
plot(RH_pred_males)
# plot(M7_pred_males, parametricbx=FALSE, 
#      main='Forescast of M7 ESPANYA')

###############################################
## Simulation of diferent mortality scenarios #
###############################################

LC_sim_males <- simulate(LC_Male_fit, nsim=1000, h=30)


##########################
# Projected life tables ##
##########################

boomers3 <- 1961

esp_coho <- read.table('esp_coho.txt')
head(esp_coho)
mx_males <- esp_coho[, 3]



# tasas observadas para 0-59
baby1961f <- extractCohort(ESP_FEMale$Dxt/ESP_FEMale$Ext, 
                          cohort = boomers3)

# baby1961 - tasas
# fitted historical rates with LC 
lc_1961_predf <- extractCohort(LC_pred_females$rates,
                              cohort = boomers3)
lc_1961_predf

library(Matrix)
max_61_82 <- as.matrix(tril(t(LC_pred_females$rates)))

d <- row(max_61_82)-col(max_61_82)
corte <- split(max_61_82, d)
corte


# lc_1961_pred - tasas predecidas
# 
# lc_fit_rates <- extractCohort(fitted(LC_Male_fit, type='rates'), 
#                               cohort = 1981)

# cohorte màs predicciòn (desde 60)
cohort_1961 <- c(baby1961, lc_1961_pred)
cohort_1961

## plot de la prediccion
plot(0:109, cohort_1961, type = 'l', 
     log = 'y', xlab='edad', ylab = 'm(x)', 
     main = 'Cohorte 1961 ESPAÑA - Predicciò 60-108')
lines(60:109, lc_1961_pred, col='red',lwd=2)


## RH
rh_1961_predf <- extractCohort(RH_pred_females$rates, 
                              cohort = boomers3) 
rh_cohort_1961 <- c(baby1961f, rh_1961_predf)
rh_cohort_1961

## M7 - BAD
m7_1961_pred <- extractCohort(M7_pred_males$rates, 
                              cohort = boomers2)
m7_1961_pred

## PLAT - BAD
plat_1961_pred <- extractCohort(PLAT_pred_males$rates,
                                cohort = boomers2)
plat_1961_pred

# PLOT RH
plot(0:109, rh_cohort_1961, type = 'l', 
     log = 'y', xlab='edad', ylab = 'm(x)', 
     main = 'RH Cohorte 1961 ESPAÑA - Predicciò 60-108')
lines(60:109, rh_1961_pred, col='red',lwd=2)



#####################################
######## Tranforming mx to qx #######
#####################################

lc_qxMales <- mx2qx(cohort_1961)
rh_qxMales <- mx2qx(rh_cohort_1961)
lc_qxMales
rh_qxMales

## Divenge in LC - RH

plot(type='l', log(rh_qxMales),main='log(qx) RH in Black')
lines(type='l', log(lc_qxMales), lwd=2, col='red')


## Life Table LC
lc_tab1961 <- probs2lifetable(probs = lc_qxMales, 
                              type = 'qx', name='LC-1961')
lc_tab1961
## Life Table RH

rh_tab1961 <- probs2lifetable(probs = rh_qxMales, 
                              type = 'qx', name='RH-1961')
rh_tab1961
lc_qxMales==rh_qxMales

## PERM 1961
perm <- conslm1(1961)/10
length(rh_tab1961@lx)

plot(perm[c(1:90)], type='l',main= 'PERM(b) - LC(r) - RH(g')
lines(rh_tab1961@lx*10, type = 'l', col='green')
lines(lc_tab1961@lx*10, type = 'l', col='red')

View(matrix(c(perm[c(1:90)],rh_tab1961@lx*10 ,
              lc_tab1961@lx*10), ncol = 3))
View(matrix(c(lc_qxMales[c(60:89)],
              rh_qxMales[c(60:89)]),ncol=2))

## fijarje en las esperanzas de vida con para edades
## avanzadas con ambas tablas. Es la ultima columna
## LC esperanza de vida menor 

rh_tab1961
lc_tab1961

LCfit <- fit(lc(), data = USmale)
forec <- forecast(LCfit)

LCsim <- simulate(LCfit, nsim = 1000,h=30, seed=29)
LCsim

## observed rates for ages 0-59
histo_rates <- extractCohort(USmale$Dxt/USmale$Ext,
                             cohort = 1955)[1:60]
#### fitted rates
lc_fit_rates <- extractCohort(fitted(LCfit, type='rates'),
                              cohort=1955)

## forecasted rates for
lc_for_rates <- extractCohort(forec$rates, 
                             cohort=1955)

lc_all <- c(histo_rates, lc_fit_rates, lc_for_rates)

## PLot
plot(0:109, lc_all, type = 'l', 
     log='y', xlab='age', ylab = 'mx', 
     main='cohort')
line(68:89, lc_for_rates, col='red')


###############
## Prova fit701
###############

desde_1980 <- function (country, username, password, label = country) 
{
  path <- paste("https://www.mortality.org/hmd/", country, 
                "/STATS/", "Mx_1x1.txt", sep = "")
  userpwd <- paste(username, ":", password, sep = "")
  txt <- RCurl::getURL(path, userpwd = userpwd)
  con <- textConnection(txt)
  mx <- try(utils::read.table(con, skip = 2, header = TRUE, 
                              na.strings = "."), TRUE)
  close(con)
  if (class(mx) == "try-error") 
    stop("Connection error at www.mortality.org. Please check username, password and country label.")
  path <- paste("https://www.mortality.org/hmd/", country, 
                "/STATS/", "Exposures_1x1.txt", sep = "")
  userpwd <- paste(username, ":", password, sep = "")
  txt <- RCurl::getURL(path, userpwd = userpwd)
  con <- textConnection(txt)
  pop <- try(utils::read.table(con, skip = 80, header = TRUE, 
                               na.strings = "."), TRUE)
  close(con)
  if (class(pop) == "try-error") 
    stop("Exposures file not found at www.mortality.org")
  obj <- list(type = "mortality", label = label, lambda = 0)
  obj$year <- sort(unique(mx[, 1]))
  n <- length(obj$year)
  m <- length(unique(mx[, 2]))
  obj$age <- mx[1:m, 2]
  mnames <- names(mx)[-c(1, 2)]
  n.mort <- length(mnames)
  obj$rate <- obj$pop <- list()
  for (i in 1:n.mort) {
    obj$rate[[i]] <- matrix(mx[, i + 2], nrow = m, ncol = n)
    obj$rate[[i]][obj$rate[[i]] < 0] <- NA
    obj$pop[[i]] <- matrix(pop[, i + 2], nrow = m, ncol = n)
    obj$pop[[i]][obj$pop[[i]] < 0] <- NA
    dimnames(obj$rate[[i]]) <- dimnames(obj$pop[[i]]) <- list(obj$age, 
                                                              obj$year)
  }
  names(obj$pop) = names(obj$rate) <- tolower(mnames)
  obj$age <- as.numeric(as.character(obj$age))
  if (is.na(obj$age[m])) 
    obj$age[m] <- 2 * obj$age[m - 1] - obj$age[m - 2]
  return(structure(obj, class = "demogdata"))
}


##
iterations = 10
variables = 2

output <- matrix(ncol=variables, nrow=iterations)

for(i in 1:iterations){
  output[i,] <- runif(2)
  
}

output
