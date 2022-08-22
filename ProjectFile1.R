getwd()

setwd("~/capstone/scripts")


pacman::p_load(tidyverse)
rm(list=ls())

READ <- read_csv("~/capstone/data/TCGA_READ_TMM_p400_common_Rboot.csv")

exp <- READ %>% column_to_rownames("gene_id") %>% t()

rm(READ)

# exp$bcr_patient_barcode <- row.names(exp)  
View(exp)

summarise(exp)
