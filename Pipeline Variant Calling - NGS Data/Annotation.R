## The following function tests whether a list of packages is installed and installs them if they are not available:
check_install = function(packages) {
  not_installed = setdiff(packages, rownames(installed.packages()))
  if(length(not_installed) > 0) {
    write(paste("The libraries", not_installed, "are not available, so they are being installed now.", sep=" "), stdout())
    
    ## use BiocManager::install() instead of install.packages()
    if (!requireNamespace("BiocManager", quietly = T))
      install.packages("BiocManager")
    
    BiocManager::install(not_installed, ask = F)
  }
}

packages = c( "ReactomePA", "org.Sc.sgd.db", "DESeq2", "bedr",
              "TxDb.Scerevisiae.UCSC.sacCer3.sgdGene", 
              "BSgenome.Scerevisiae.UCSC.sacCer3",
              "VariantAnnotation", "topGO")
check_install(packages)
installed = lapply(packages, library, character.only = T)

setwd("C:/Users/Floarea/Desktop/UVT/Baze de date/proiect examen")
vcf1_g=readVcf("Galaxy31-[500-I-Rep1-SnpEFF-eff-vcf,bed].vcf","sacCer3")
txdb = TxDb.Scerevisiae.UCSC.sacCer3.sgdGene
dim(vcf1_g)
intersect(seqlevels(txdb), seqlevels(vcf1_g))

header(vcf1_g)


#1. Câte varia??ii se afla în exonii genelor (coding regions)
loc_var_coding_1=locateVariants(vcf1_g,txdb, CodingVariants())
nrow(data.frame(loc_var_coding_1)) 

#2. câte variatii sunt localizate în zonele intergenice - upstream sau downstream, la o distan??a de cel mult 100 Kb de cele mai apropiate gene
loc_var_interg_1=locateVariants(vcf1_g,txdb, IntergenicVariants(upstream=10^5, downstream=10^5))
loc_var_interg_1=locateVariants(vcf1_g,txdb, IntergenicVariants(upstream=10, downstream=10))
nrow(data.frame(loc_var_interg_1))
# intrebare - de ce la fel chiar daca u/d e 1 sau 10^11?

#3.	Folositi functia predictCoding din pachetul R VariantAnnotation si verificati
#coloana CONSEQUENCE din rezultate. Câte SNP-uri unice au efect de tip "nonsynonymous"?
variants1=data.frame(locateVariants(vcf1_g,txdb, CodingVariants()))
predict1=data.frame(predictCoding(vcf1_g, txdb, BSgenome.Scerevisiae.UCSC.sacCer3))
nrow(predict1[predict1$CONSEQUENCE=="nonsynonymous",])

#4.	Calculati intersectiile celor 3 fisiere VCF de la task-ul
#1, precum si a celor 3 de la task-ul 2, folosind pachetul R
#bedr. Creati câte o diagrama Venn (folosind functia 
#bedr.plot.region) pentru fiecare din cele 2 seturi de fisiere VCF.


vcf2_g=readVcf("Galaxy34-[500-I-Rep2-SnpEFF-eff-vcf,bed].vcf",genome="sacCer3")
vcf3_g=readVcf("Galaxy37-[500-I-Rep3-SnpEFF-eff-vcf,bed].vcf",genome="sacCer3")

setwd("C:\\Users\\Floarea\\Desktop\\UVT\\Baze de date\\proiect examen\\linux\\output final")
vcf1_b=readVcf("Rep1-500-I.vcf",genome="sacCer3")
vcf2_b=readVcf("Rep2-500-I.vcf",genome="sacCer3")
vcf3_b=readVcf("Rep3-500-I.vcf",genome="sacCer3")


#6
library(org.Sc.sgd.db)
## check the available keytypes from org.Sc.sgd.db
keytypes(org.Sc.sgd.db)
# ne zice tipurile de id-uri - chei unice identificatori pt dif tipuri de date
#cheile sunt in format ORF folosit de cei car eintretin bazele de date de la drojdie
# pe noi ne intereseaza din ORF in ENTREZ ID


## current gene IDs are of type "ORF"; see an example of "ORF" keys in org.Sc.sgd.db
head(keys(org.Sc.sgd.db, keytype="ORF", pattern = "YAL"))
# pattern de cautare -  pt YAL cauta-mi toate cheile de tip ORF din baza asta de date
# mi-am confirmat ca genele noastre sunt in format ORF


## get a list of Entrez IDs corresponding to the gene IDs from peakAnnoDF
entrezIDs = select(org.Sc.sgd.db, keys = unique(predict1$GENEID), keytype="ORF", columns = "ENTREZID")
#warning -  many:1 - nu intotdeauna a exista o mapare de 1 la 1 
# posibil sa fi fost entrezid-uri care sa corespunda la mai multe gene
class(entrezIDs) #sa vedem ce e - dataframe
head(entrezIDs)

pathwayAnno = ReactomePA::enrichPathway(entrezIDs$ENTREZID, organism = "yeast")
class(pathwayAnno) # nu e folositoare ca atare -  facem dataframe
#?ReactomePA::enrichPathway # are o lista cu cele mai folosite organisme
## convert to pathwayAnno to data frame
pathwayAnnoDF = data.frame(pathwayAnno)
str(pathwayAnnoDF) # coloanele
head(pathwayAnnoDF) #unele coloane cam dubioase -> le sterg - nu ma intereseaza cate gene sunt in pathway-urile respective

##remove the last 2 columns
pathwayAnnoDF = pathwayAnnoDF[, -c(8, 9)]
str(pathwayAnnoDF) # obiecte statistice - sem2 - qval e un market pt cat de mult ne intereseaza rezultatele - statistical significance
nrow(pathwayAnnoDF)
pathwayAnnoDF #genele corespund acestor pathway-uri
pathwayAnnoDF$Description




#vcf-urile originale - cele de la fiecare sample
#nu cu cele comune pt ca da eroare
#functia bedr - ruleaza 2 utilitare - bedtools si bedops care face acelasi lucru
#bedr ruleaza pe bedtools iseq genereza fisierele de intersectie
#pachetyl bedr - o functie care creaza diagrame venn direct pe fisierle respective
#p o diagrama ven create manual cele 3 elemente
#intersectia 11, si cele 2 seturi disjunctive
#maxs2 pt peak-uri, gatk e pt indel-uri si snip-uri

# sa includem si cate read-uri comune
#sample1 a avut 1000, sample 2 1500 - in comun 800
#care ar fi replicabilitatea
#sample-urile sunt din aceeasi mostra biologica extrase din acelasi tip de tesut
#singura diferent a fost cantitatea de celule extrase - biomasa - 500 mg 100 50
#la 500mg am avut 3 replicate etc
#ce ne zice vcf tools aisic - deschid vcf in text editor si vedem cate randuri sunt
#daca avem fisiere vcf cu mai mult randuri cu 0 1 0 1 -numaram doar cu 1 1 care sunt comune

#la task 3 - direct diagramele venn
#plotam si numele si numerele sau le trecem in fisier
#si comparatii sample cu sample
#replicate 1 galaxy cu replicate 1 bcbio
#cate snip=uri indel-uri sunt comune intre cele 2 workflow-uri
#probabil diferente









###### tratare out of bound
#In valid.GenomicRanges.seqinfo(x, suggest.trim = TRUE) :GRanges object contains 63 out-of-bound ranges located on sequences 

vcf1_g_trimmed=trim(vcf1_g,c(127, 190, 236, 274, 294, 1373, 1006, 1432,1035, 1149, 3086, 6671, 6672, 6673, 1775, 2071, 2162, 2905, 2918, 3383, 4446, 4259, 4651, 5357, 5154, 5576,6639))
locateVariants(trim(vcf1_g),txdb, CodingVariants())

ext_grn=vcf1_g
idx <- GenomicRanges:::get_out_of_bound_index(ext_grn)
# raspuns integer(0)
if (length(idx) != 0L)
  ext_grn <- ext_grn[-idx]
locateVariants(ext_grn,txdb, CodingVariants())


#### altele
vcf1=data.frame(vcf1_g@rowRanges)
#vcf1_gr=as(vcf1,"GRanges")
vcf1_gr_sample<-head(rowRanges(vcf1_g),500000)
locateVariants(vcf1,txdb, AllVariants())
a1=locateVariants(vcf1_g,txdb, AllVariants())
table(a1$LOCATION)