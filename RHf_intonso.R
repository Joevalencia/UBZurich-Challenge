#####################################
### Suporte Obtencion Mujeres RH ####
#####################################

# Generation
b <- 1961:1982

# Cohorte 1961 Mujer HR
rh_61f <- extractCohort(ESP_FEMale$Dxt/ESP_FEMale$Ext, 
                        cohort =b[1])
rh_61f

rh_61fitted <- extractCohort(fitted(RH_FEMale_fit, type='rates'),
                             cohort = b[1])

rh_61f_pred <- extractCohort(RH_pred_females$rates, 
                               cohort = b[1])
rh_61f_pred
c61 <- c(rh_61f[0:40],rh_61fitted, rh_61f_pred)
c61

# Cohorte 1962 Mujer HR
rh_62f <- extractCohort(ESP_FEMale$Dxt/ESP_FEMale$Ext, 
                        cohort =b[2])
rh_62f

rh_62fitted <- extractCohort(fitted(RH_FEMale_fit, type='rates'),
                              cohort = b[2])

rh_62f_pred <- extractCohort(RH_pred_females$rates, 
                             cohort = b[2])
rh_62f_pred
c62 <- c(rh_62f[0:40], rh_62fitted,rh_62f_pred)
c62
# Cohorte 1963 Mujer HR
rh_63f <- extractCohort(ESP_FEMale$Dxt/ESP_FEMale$Ext, 
                        cohort =b[3])
rh_63f

rh_63fitted <- extractCohort(fitted(RH_FEMale_fit, type='rates'),
                             cohort = b[3])
rh_63fitted
rh_63f_pred <- extractCohort(RH_pred_females$rates, 
                             cohort = b[3])
rh_63f_pred
c63 <- c(rh_63f[0:40], rh_63fitted,rh_63f_pred)
c63
# Cohorte 1964 Mujer HR
rh_64f <- extractCohort(ESP_FEMale$Dxt/ESP_FEMale$Ext, 
                        cohort =b[4])
rh_64f

rh_64fitted <- extractCohort(fitted(RH_FEMale_fit, type='rates'),
                             cohort = b[4])

rh_64f_pred <- extractCohort(RH_pred_females$rates, 
                             cohort = b[4])
rh_64f_pred
c64 <- c(rh_64f[0:40], rh_64fitted,rh_64f_pred)
c64
# Cohorte 1965 Mujer HR
rh_65f <- extractCohort(ESP_FEMale$Dxt/ESP_FEMale$Ext, 
                        cohort =b[5])
rh_65f

rh_65fitted <- extractCohort(fitted(RH_FEMale_fit, type='rates'),
                             cohort = b[5])

rh_65f_pred <- extractCohort(RH_pred_females$rates, 
                             cohort = b[5])
rh_65f_pred
c65 <- c(rh_65f[0:40], rh_65fitted,rh_65f_pred)
c65
# Cohorte 1966 Mujer HR
rh_66f <- extractCohort(ESP_FEMale$Dxt/ESP_FEMale$Ext, 
                        cohort =b[6])
rh_66f

rh_66fitted <- extractCohort(fitted(RH_FEMale_fit, type='rates'),
                             cohort = b[6])

rh_66f_pred <- extractCohort(RH_pred_females$rates, 
                             cohort = b[6])
rh_66f_pred
c66 <- c(rh_66f[0:40], rh_66fitted,rh_66f_pred)
c66
# Cohorte 1967 Mujer HR
rh_67f <- extractCohort(ESP_FEMale$Dxt/ESP_FEMale$Ext, 
                        cohort =b[7])
rh_67f

rh_67fitted <- extractCohort(fitted(RH_FEMale_fit, type='rates'),
                             cohort = b[7])

rh_67f_pred <- extractCohort(RH_pred_females$rates, 
                             cohort = b[7])
rh_67f_pred
c67 <- c(rh_67f[0:40], rh_67fitted,rh_67f_pred)
c67
# Cohorte 1968 Mujer HR
rh_68f <- extractCohort(ESP_FEMale$Dxt/ESP_FEMale$Ext, 
                        cohort =b[8])
rh_68f

rh_68fitted <- extractCohort(fitted(RH_FEMale_fit, type='rates'),
                             cohort = b[8])

rh_68f_pred <- extractCohort(RH_pred_females$rates, 
                             cohort = b[8])
rh_68f_pred
c68 <- c(rh_68f[0:40], rh_68fitted,rh_68f_pred)
c68
# Cohorte 1969 Mujer HR
rh_69f <- extractCohort(ESP_FEMale$Dxt/ESP_FEMale$Ext, 
                        cohort =b[9])
rh_69f

rh_69fitted <- extractCohort(fitted(RH_FEMale_fit, type='rates'),
                             cohort = b[9])

rh_69f_pred <- extractCohort(RH_pred_females$rates, 
                             cohort = b[9])
rh_69f_pred
c69 <- c(rh_69f[0:40], rh_69fitted,rh_69f_pred)
c69
# Cohorte 1970 Mujer HR
rh_70f <- extractCohort(ESP_FEMale$Dxt/ESP_FEMale$Ext, 
                        cohort =b[10])
rh_70f

rh_70fitted <- extractCohort(fitted(RH_FEMale_fit, type='rates'),
                             cohort = b[10])

rh_70f_pred <- extractCohort(RH_pred_females$rates, 
                             cohort = b[10])
rh_70f_pred
c70 <- c(rh_70f[0:40], rh_70fitted,rh_70f_pred)
c70
# Cohorte 1971 Mujer HR
rh_71f <- extractCohort(ESP_FEMale$Dxt/ESP_FEMale$Ext, 
                        cohort =b[11])
rh_71f

rh_71fitted <- extractCohort(fitted(RH_FEMale_fit, type='rates'),
                             cohort = b[11])

rh_71f_pred <- extractCohort(RH_pred_females$rates, 
                             cohort = b[11])
rh_71f_pred
c71 <- c(rh_71f[0:40], rh_71fitted,rh_71f_pred)
c71
# Cohorte 1972 Mujer HR
rh_72f <- extractCohort(ESP_FEMale$Dxt/ESP_FEMale$Ext, 
                        cohort =b[12])
rh_72f

rh_72fitted <- extractCohort(fitted(RH_FEMale_fit, type='rates'),
                             cohort = b[12])

rh_72f_pred <- extractCohort(RH_pred_females$rates, 
                             cohort = b[12])
rh_72f_pred
c72 <- c(rh_72f[0:40], rh_72fitted,rh_72f_pred)
c72
# Cohorte 1973 Mujer HR
rh_73f <- extractCohort(ESP_FEMale$Dxt/ESP_FEMale$Ext, 
                        cohort =b[13])
rh_73f

rh_73fitted <- extractCohort(fitted(RH_FEMale_fit, type='rates'),
                             cohort = b[13])

rh_73f_pred <- extractCohort(RH_pred_females$rates, 
                             cohort = b[13])
rh_73f_pred
c73 <- c(rh_73f[0:40], rh_73fitted,rh_73f_pred)
c73
# Cohorte 1974 Mujer HR
rh_74f <- extractCohort(ESP_FEMale$Dxt/ESP_FEMale$Ext, 
                        cohort =b[14])
rh_74f

rh_74fitted <- extractCohort(fitted(RH_FEMale_fit, type='rates'),
                             cohort = b[14])

rh_74f_pred <- extractCohort(RH_pred_females$rates, 
                             cohort = b[14])
rh_74f_pred
c74 <- c(rh_74f[0:40], rh_74fitted,rh_74f_pred)
c74
# Cohorte 1975 Mujer HR
rh_75f <- extractCohort(ESP_FEMale$Dxt/ESP_FEMale$Ext, 
                        cohort =b[15])
rh_75f

rh_75fitted <- extractCohort(fitted(RH_FEMale_fit, type='rates'),
                             cohort = b[15])

rh_75f_pred <- extractCohort(RH_pred_females$rates, 
                             cohort = b[15])
rh_75f_pred
c75 <- c(rh_75f[0:40], rh_75fitted,rh_75f_pred)
c75
# Cohorte 1976 Mujer HR
rh_76f <- extractCohort(ESP_FEMale$Dxt/ESP_FEMale$Ext, 
                        cohort =b[16])
rh_76f

rh_76fitted <- extractCohort(fitted(RH_FEMale_fit, type='rates'),
                             cohort = b[16])

rh_76f_pred <- extractCohort(RH_pred_females$rates, 
                             cohort = b[16])
rh_76f_pred
c76 <- c(rh_76f[0:40], rh_76fitted,rh_76f_pred)
c76
# Cohorte 1977 Mujer HR
rh_77f <- extractCohort(ESP_FEMale$Dxt/ESP_FEMale$Ext, 
                        cohort =b[17])
rh_77f

rh_77fitted <- extractCohort(fitted(RH_FEMale_fit, type='rates'),
                             cohort = b[17])

rh_77f_pred <- extractCohort(RH_pred_females$rates, 
                             cohort = b[17])
rh_77f_pred
c77 <- c(rh_77f[0:40], rh_77fitted,rh_77f_pred)
c77
# Cohorte 1978 Mujer HR
rh_78f <- extractCohort(ESP_FEMale$Dxt/ESP_FEMale$Ext, 
                        cohort =b[18])
rh_78f

rh_78fitted <- extractCohort(fitted(RH_FEMale_fit, type='rates'),
                             cohort = b[18])

rh_78f_pred <- extractCohort(RH_pred_females$rates, 
                             cohort = b[18])
rh_78f_pred
c78 <- c(rh_78f[0:40], rh_78fitted,rh_78f_pred)
c78
# Cohorte 1979 Mujer HR
rh_79f <- extractCohort(ESP_FEMale$Dxt/ESP_FEMale$Ext, 
                        cohort =b[19])
rh_79f

rh_79fitted <- extractCohort(fitted(RH_FEMale_fit, type='rates'),
                             cohort = b[19])

rh_79f_pred <- extractCohort(RH_pred_females$rates, 
                             cohort = b[19])
rh_79f_pred
c79 <- c(rh_79f[0:40], rh_79fitted,rh_79f_pred)
c79
# Cohorte 1980 Mujer HR
rh_80f <- extractCohort(ESP_FEMale$Dxt/ESP_FEMale$Ext, 
                        cohort =b[20])
rh_80f

rh_80fitted <- extractCohort(fitted(RH_FEMale_fit, type='rates'),
                             cohort = b[20])

rh_80f_pred <- extractCohort(RH_pred_females$rates, 
                             cohort = b[20])
rh_80f_pred
c80 <- c(rh_80f[0:40],rh_80f_pred)
c80
# Cohorte 1981 Mujer HR
rh_81f <- extractCohort(ESP_FEMale$Dxt/ESP_FEMale$Ext, 
                        cohort =b[21])
rh_81f

# rh_81fitted <- extractCohort(fitted(RH_FEMale_fit, type='rates'),
#                              cohort = b[21])

rh_81f_pred <- extractCohort(RH_pred_females$rates, 
                             cohort = b[21])
rh_81f_pred
c81 <- c(rh_81f,rh_81f_pred)
c81
# Cohorte 1982 Mujer HR
rh_82f <- extractCohort(ESP_FEMale$Dxt/ESP_FEMale$Ext, 
                        cohort =b[22])
rh_82f

# rh_82fitted <- extractCohort(fitted(RH_FEMale_fit, type='rates'),
#                              cohort = b[22])

rh_82f_pred <- extractCohort(RH_pred_females$rates, 
                             cohort = b[22])
rh_82f_pred
c82 <- c(rh_82f, 0.0004793026,rh_82f_pred)
c82


## Matrice RH Mujeres ##
## Predecidas desde la edad 40

vec1 <- c(c61, c62, c63, c64, c65, c66, c67, c68, c69,
          c70, c71, c72, c73, c74, c75, c76, c77, c78,
          c79, c80, c81, c82)


matrice1 <- matrix(vec1, ncol = 22, nrow = 101)
colnames(matrice1) <- b
rownames(matrice1) <- 0:100
View(matrice1)

## Export CSV

# write.csv(matrice1, 'MATRICEf_RH_1961_1982.csv')
