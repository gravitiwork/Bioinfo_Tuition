
############# Fastq.gz file to Bed file of sample SRR23085867

############# See every command I changed the name in to SRR23085867

##### These are the code to unzip the fastq files
gzip -d SRR23085867_1.fastq.gz
gzip -d SRR23085867_2.fastq.gz

##### There are the simple code for cutadapt

cutadapt -q 20 -o Trimmed_SRR23085867_1.fastq SRR23085867_1.fastq
cutadapt -q 20 -o Trimmed_SRR23085867_2.fastq SRR23085867_2.fastq

##### Mapping

bowtie2 -x cat_index -q -1 Trimmed_SRR23085867_1.fastq -2 Trimmed_SRR23085867_2.fastq --no-unal --local --score-min C,50,1 --threads 8 -S SRR23085867.sam


##### 

samtools view -S -bh SRR23085867.sam > SRR23085867.bam

########### Now we need to sort the mapped reads by this command

samtools sort -T temp -O 'bam' SRR23085867.bam > SRR23085867_sorted.bam


########### Further we will generate a index file SRR23085867_sorted.bam for future use.


samtools index SRR23085867_sorted.bam


############### read coverage estimation 

bedtools bamtobed -i SRR23085867_sorted.bam > SRR23085867_sorted.bed

############### Make sure that you have Felis_catus.Felis_catus_9.0.dna.toplevel.fa.gz.fai file in your working directory. 

bedtools genomecov -bg -i SRR23085867_sorted.bed -g Felis_catus.Felis_catus_9.0.dna.toplevel.fa.gz.fai > SRR23085867_integration.txt


######## End




