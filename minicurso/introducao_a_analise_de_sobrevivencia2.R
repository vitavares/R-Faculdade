library(survival)
library(survminer)
lung

fitl = coxph(Surv(time, status)~sex, data = lung, method = 'breslow')
summary(fitl) #se p<alfa=0,05 então rejeita H0
fitl

fitl2 = coxph(Surv(time, status)~ age + sex+ ph.karno + wt.loss, data = lung, method = 'breslow')
summary(fitl2)

ggsurvplot(survfit(fitl2, data = lung), palette = 'purple', ggtheme = theme_minimal())

sex_df = with(lung,
                data.frame(sex = c(1,2),
                           age = rep(mean(age, na.rm = TRUE), 2),
                           ph.karno = rep(mean(ph.karno, na.rm = TRUE), 2),
                           wt.loss = rep(mean(wt.loss, na.rm = TRUE),2)
                           )
              )
sex_df


fitl2a = survfit(fitl2, newdata = sex_df, data = lung)
fitl2a
ggsurvplot(fitl2a, conf.int = T)

coxtest = cox.zph(fitl2, transform = "identity", terms = F)
print(coxtest)
ggcoxzph(coxtest)


require(survminer)
ggcoxdiagnostics(fitl2, type = 'scaledsch')
