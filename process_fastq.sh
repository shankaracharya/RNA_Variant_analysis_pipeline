#!/bin/bash

#load required modules
#module load picard/2.17.8
module load star/2.5.3a

####setting up the directories

home=/path/to/the/working/directory
#replace "GRCm38.p6.genome.fa" with genome fasta file
ref=${home}/ref/GRCm38.p6.genome.fa
GatkHome=/path/to/gatk/installation/directory/GenomeAnalysisTK-3.4-0
PicardHome=/path/to/picard/installation/directory/picard-tools-1.110
#create and place gtf file, known indels, known SNPs file in resource directory
res=/path/to/resource/directory
INDEL=${res}/KONWN_INDELS.vcf
SNP=${res}/KNOWN_SNPs.vcf
SM=$1
genomeDir=${home}/genomedir
bam=${home}/bam
realn_bam=${bam}/realn_bam
print_bam=${bam}/final_bam
vcf=${home}/vcf
processDir_1pass=${home}/processDir/1_pass
genomeDir_2pass=${home}/genomeDir_2pass_${SM}
TMP=/project/umw_john_landers/tmp
