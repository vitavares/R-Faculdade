library(survival)
lung

Surv(lung$time, lung$status)
ekm0 = survfit(Surv(time,status==2)~1, data=lung, conf.type="log-log")
summary(ekm0)
plot(ekm0, mark.time = TRUE)

library(survminer)
ggsurvplot(ekm0, conf.int = TRUE, pval = TRUE, risk.table = TRUE, surv.median.line = "hv")
plot(ekm0, conf.int = FALSE)
summary(survfit(Surv(time, status)~1, data = lung),time=180)
summary(survfit(Surv(time, status)~1, data = lung),time=365.025)
ekm = survfit(Surv(time, status)~sex, data = lung, conf.type = "log-log")
summary(ekm)
survdiff(Surv(time, status)~sex, rho = 0, data = lung)

test = survfit(Surv(ph.ecog)~1, data=lung, conf.type="log-log")
survdiff(Surv(ph.ecog)~1, data = lung, rho = 0)
