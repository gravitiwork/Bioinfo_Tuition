
### bash code by Study Tech

##### These are the code to unzip the fastq files
gzip -d SRR23085866_1.fastq.gz
gzip -d SRR23085866_2.fastq.gz

##### There are the simple code for cutadapt

cutadapt -q 20 -o Trimmed_SRR23085866_1.fastq SRR23085866_1.fastq
cutadapt -q 20 -o Trimmed_SRR23085866_2.fastq SRR23085866_2.fastq



#### Run this code by $sh Cutadapt.sh and Enter
