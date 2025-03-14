
############# After "01_Cutadapt.sh" run use this script 

###### In this script We will do mapping of reads

###### Here the input files are Trimmed_SRR23085866_1.fastq, Trimmed_SRR23085866_2.fastq 

###### Those 6 files (like "cat_index.1.bt2") will be used as genome index

###### Output file will be SRR23085866.sam. 


bowtie2 -x cat_index -q -1 Trimmed_SRR23085866_1.fastq -2 Trimmed_SRR23085866_2.fastq --no-unal --local --score-min C,50,1 --threads 4 -S SRR23085866.sam



###### Check the files by ls -l
ls -l
