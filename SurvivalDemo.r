#data<- read.csv("D:/MSc Bioinformatics/Sem3/Cancer genomics/CGGA.mRNAseq_693_clinical.20200506.csv")
#print(data)

data <- read.table('D:/MSc Bioinformatics/Sem3/CGGA.mRNAseq_693_clinical.20200506.txt', header = T, sep = '\t', row.names = 1)
print(data)


fit =  survfit(Surv(OS, Censor..alive.0..dead.1.) ~ Gender, 
               data = data)4
fit


ggsurvplot(fit, data = data)

ggsurvplot(fit, data = data,
           surv.median.line = 'hv')

ggsurvplot(fit, data = data,
           surv.median.line = 'hv',
           pval = T)

ggsurvplot(fit, data = data,
           surv.median.line = 'hv',
           pval = T, risk.table = T)


fit =  survfit(Surv(OS, Censor..alive.0..dead.1.) ~ IDH_mutation_status, 
               data = data)

fit =  survfit(Surv(OS, Censor..alive.0..dead.1.) ~ IDH_mutation_status + Gender, 
               data = data)