library(DESeq2)
library(GEOquery)
library(canvasXpress)
library(ggplot2)
library(clinfun)
library(GGally)
library(factoextra)
gc()
data <- getGEO(GEO = "GSE152075")
head(data)
clindata <- data[["GSE152075_series_matrix.txt.gz"]]@phenoData@data
head(clindata)
library(dplyr)
glimpse(data)
glimpse(clindata)
raw_counts <- read.delim("C:/Users/merve/downloads/GSE152075_raw_counts_GEO.txt.gz", stringsAsFactors=FALSE, sep = " ")
head(clindata)
glimpse(raw_counts)
glimpse(clindata)
View(clindata)
raw_counts <- as.matrix(raw_counts)
rownames(clindata) <- clindata$title
colnames(clindata)[colnames(clindata) == "sequencing_batch:ch1"] <- "batch"
clindata$batch <- as.factor(clindata$batch)
colnames(clindata)[colnames(clindata) == "n1_ct:ch1"] <- "ct"
colnames(clindata)[colnames(clindata) == "sars-cov-2 positivity:ch1"] <- "positivity"
clindata$positivity[clindata$positivity == "pos"] <- "COVID19"
clindata$positivity[clindata$positivity == "neg"] <- "HEALTHY"
clindata$positivity <- as.factor(clindata$positivity)
View(clindata)
dds <- DESeqDataSetFromMatrix(countData = raw_counts,
colData = clindata,
design =~positivity + batch)
head(dds)
glimpse(dds)
dds <- estimateSizeFactors(dds)
head(dds)
norm_counts <- counts(dds, normalized=TRUE)
head(norm_counts)
clindata$viral_load <- clindata$ct
clindata$viral_load[clindata$viral_load == "N/A"] <- "Negative"
clindata$viral_load[clindata$viral_load > 24 & clindata$viral_load !=
"Unknown" & clindata$viral_load != "Negative"] <-
"LOW"
clindata$viral_load[clindata$viral_load <= 24 & clindata$viral_load
>= 19] <- "MEDIUM"
clindata$viral_load[clindata$viral_load < 19] <- "HIGH"
clindata$viral_load <- as.factor(clindata$viral_load)
clindata$viral_load <- factor(clindata$viral_load, levels =
c("Negative", "LOW", "MEDIUM", "HIGH",
"Unknown"))
clindata$positivity <- factor(clindata$positivity, levels =
c("HEALTHY", "COVID19"))
}
clindata$viral_load <- clindata$ct
clindata$viral_load[clindata$viral_load == "N/A"] <- "Negative"
clindata$viral_load[clindata$viral_load > 24 & clindata$viral_load !=
"Unknown" & clindata$viral_load != "Negative"] <-
"LOW"
clindata$viral_load[clindata$viral_load <= 24 & clindata$viral_load
>= 19] <- "MEDIUM"
clindata$viral_load[clindata$viral_load < 19] <- "HIGH"
clindata$viral_load <- as.factor(clindata$viral_load)
clindata$viral_load <- factor(clindata$viral_load, levels =
c("Negative", "LOW", "MEDIUM", "HIGH",
"Unknown"))
clindata$positivity <- factor(clindata$positivity, levels =
c("HEALTHY", "COVID19"))
#stratify age
clindata$age_cat <- clindata$`age:ch1`
clindata$age_cat[clindata$`age:ch1` < 30] = "< 30"
clindata$age_cat[clindata$`age:ch1` >= 30 & clindata$`age:ch1` < 40] ="30s"
clindata$age_cat[clindata$`age:ch1` >= 40 & clindata$`age:ch1`< 50] ="40s"
clindata$age_cat[clindata$`age:ch1` >= 50 & clindata$`age:ch1` < 60] ="50s"
clindata$age_cat[clindata$`age:ch1` >= 60 & clindata$`age:ch1` < 70] ="60s"
clindata$age_cat[clindata$`age:ch1` >= 70] ="70+"
clindata$age_cat[clindata$`age:ch1` == "Unknown"] = NA
glimpse(clindata)
MX1 <- ggplot(NULL, aes(x=clindata$positivity,
y=log2(t(norm_counts["MX1",]+1)))) +
geom_jitter(aes(shape=clindata$positivity,
color=clindata$positivity), size=3)+
xlab(NULL) +
ylab("MX1 expression \n log2 (norm counts +1)") +
theme(legend.position = "bottom") +
theme_bw() +
theme(axis.text = element_text(size = 15),
axis.title = element_text(size = 15),
plot.title =element_text(size = 25),
legend.position = 'none') +
stat_summary(fun=mean,
geom="point",
shape= '_',
size=14,
colour= c('#b53d35', '#066e70'))
MX1
# ggsave(filename="[Name of the file.png]", plot= [name of the plot in RStudio (i.e.: MX1)], device="png", dpi=600, height=10, width=14, units="in")
ggsave(filename="c:/users/merve/downloads/covidplot.png", plot=MX1, device="png", dpi=600, height=10, width=14, units="in")
#Please note that Limma and DESeq2 would be more appropriate statistical packages to run when analyzing whole transcriptomes. In (Bizzotto et al., 2020), we analyzed a pre-selected set of genes; therefore, the Wilcoxon test can be used to analyze mean differences between groups.
pairwise_corr <- ggpairs(as.data.frame(log2(t(norm_counts+1))),
columns = c("MX1", "MX2", "ACE2", "TMPRSS2"),
upper = list(continuous = wrap('cor',
method = "spearman", size = 3),
combo = "box_no_facet",
discrete = "count",
na ="na"),
ggplot2::aes(colour=clindata$positivity,
shape=clindata$positivity, alpha = 0.01))
pairwise_corr <- pairwise_corr + theme(strip.placement = "outside",
text = element_text(size = 9 , face = "bold")) +
ggtitle("Gene correlation") +
theme(plot.title = element_text(size = 15,
hjust = 0.5)) +
ylab("log2(counts +1)") +
xlab("log2 (counts +1)")
pairwise_corr
ggsave(filename="c:/users/merve/downloads/covidplotcorr.png", plot=pairwise_corr, device="png", dpi=600, height=10, width=14, units="in")
ggsave(filename="c:/users/merve/downloads/covidplotcorr.png", plot=pairwise_corr, device="png", dpi=600, height=10, width=14, units="in")
rm(pairwise_corr)
rm(MX1)
gc()
#Plot gene expression correlation between two genes and include viral load (expressed as Ct) in a color scale (Figure 3B.i) and calculate the Spearman correlation coefficient (Figure 3B.ii)
MX1_MX2 <- ggplot(NULL, aes(x =
log2(t(norm_counts["MX1",]+1)[which(clindata$positivity=="COVID19" &
clindata$ct != "Unknown")]),
y = log2(t(norm_counts["MX2",]+1))[which(clindata$positivity=="
COVID19"&
clindata$ct != "Unknown")],
color = as.integer(clindata$ct[(which(clindata$positivity=="
COVID19" &
clindata$ct != "Unknown"))]))) +
geom_point(size = 4, na.rm = TRUE) +
scale_color_gradientn(colours=c("red","white","blue"), name = "Viral
load (ct)") +
ylab("MX2 expression RNA-seq \n log2 (norm counts +1)") +
xlab("MX1 expression RNA-seq \n log2 (norm counts +1)") +
theme(legend.position = "bottom") +
theme_bw() +
theme(axis.text = element_text(size = 15),
axis.title = element_text(size = 15),
plot.title =element_text(size = 25))
MX1_MX2
MX1_MX2stat <-cor.test(norm_counts["MX1",]
[which(clindata$positivity=="COVID19")],
norm_counts["MX2",]
[which(clindata$positivity=="COVID19")],
method = "spearman")
MX1_MX2stat
res.pca <- prcomp(t(log2(norm_counts[c("gene1","gene2", "geneN"),]+1)),
scale = TRUE)
