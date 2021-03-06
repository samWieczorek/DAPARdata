library("MSnbase")
library("DAPAR")

exprsFile <- system.file("extdata", "Exp1_R2_pept.txt", package="DAPARdata")

metadataFile <- system.file("extdata", "samples_Exp1_R2.txt", package="DAPARdata")
metadata = read.table(metadataFile, header=TRUE, sep="\t", as.is=TRUE)
indExpData <- 27:32
indiceID <- 35

Exp1_R2_pept <- createMSnset(exprsFile, 
                          metadata, 
                          indExpData, 
                          indiceID, 
                          indexForMetacell = 14:19,
                          logData=TRUE, 
                          replaceZeros=TRUE,
                          pep_prot_data = "peptide",
                          proteinId = "Protein_group_IDs",
                          software = 'maxquant')
