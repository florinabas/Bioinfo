**Machine Learning & Statistical Inference**

Project Description: Protein Expression Data Analysis in Mouse Models through applying machine learning and statistical techniques to analyze the Mice Protein Expression dataset (72 samples, 8 experimental groups) and identifying discriminant protein expression patterns across genotype, treatment, and behavioral conditions.

Steps:
- Data preprocessing: Cleaned missing data, removed low-quality protein features, and ensured balanced class distributions across biological groups.
- Dimensionality reduction (PCA): Reduced 71 protein features to 9 principal components explaining 95% of total variance, enabling efficient downstream modeling.
- Decision Tree Classifier: Built interpretable rule-based models to classify mouse groups by protein profiles, exploring feature importance and model complexity.
- k-Nearest Neighbors (kNN): Implemented instance-based learning with cross-validation and bootstrap sampling; achieved high classification accuracy (AUC ≈ 99.4%).
- Artificial Neural Networks (ANN): Trained multi-layer perceptron models to capture nonlinear expression patterns; achieved best performance (AUC ≈ 99.6%).
- Clustering (K-means, Biclustering): Applied unsupervised learning to identify homogeneous protein expression clusters and co-regulated protein subsets across experimental conditions.
- ANOVA & statistical inference: Performed multi-factor ANOVA to detect proteins with significant differential expression, visualized results with Manhattan-style plots, and linked findings to behavioral effects.

Gained practical experience in building reproducible NGS analysis pipelines, integrating bioinformatics tools, and performing downstream variant interpretation and functional analysis.


**NGS Variant Analysis and Annotation Pipelines (Galaxy, Bcbio-nextgen, R/Bioconductor)**

Project description: Implementing and optimizing end-to-end pipelines for detecting and annotating genomic variants from NGS data in Saccharomyces cerevisiae.

Steps:
1. Galaxy workflow: Built a complete variant calling pipeline integrating tools such as FastQC, BWA, Samtools, Picard, FreeBayes, SnpEff, bcftools, and MultiQC. The workflow performed quality control, read alignment to the sacCer3 reference genome, variant detection, annotation, and comprehensive reporting for multiple biological replicates.
2. Bcbio-nextgen pipeline: Configured a GATK-based germline variant calling workflow using Bowtie2 for alignment and HaplotypeCaller for variant detection, including automated SnpEff annotation and multi-sample VCF comparison with bcftools.
3. Variant annotation and comparative analysis in R: Developed R scripts leveraging Bioconductor packages (VariantAnnotation, GenomicRanges, BSgenome, TxDb, ReactomePA, topGO) to annotate variants, identify coding and intergenic changes, determine nonsynonymous SNPs, and perform functional enrichment analysis. Used bedr for intersection and Venn analyses to compare results across replicates and between pipelines.

Gained hands-on experience applying supervised and unsupervised machine learning methods, dimensionality reduction, and statistical testing to biological datasets.


**Biostatistics in R**

Project Description: Analyzed clinical data from a study of 29 patients receiving Botox treatment for migraines, focusing on treatment efficacy and factors influencing migraine frequency, intensity, and presence of aura.

Steps:
- Data Cleaning & Preparation: Standardized variable formats, handled missing values and outliers.
- Exploratory Analysis: Visualized distributions, compared groups by age, gender, and aura.
- Statistical Testing: Applied Wilcoxon tests, ANOVA, and Levene’s test to assess differences in migraine outcomes.
- Regression Modeling: Built linear and logistic regression models to quantify the impact of treatment and patient factors on migraine intensity and aura presence.
- Prediction & Interpretation: Predicted outcomes for missing data points and evaluated model performance.

Gained hands-on experience with R for data handling, visualization and statistical analysis, applied non-parametric tests and regression models to real clinical data and learned to interpret results in a biomedical context and communicate findings clearly.
