
########### After the successful mapping you will get this "SRR23085866.sam" SAM file


########### Bam is a large complex mapped file so we will convert this sam file into smaller BAM file. 
########### The ">" is to convert input to output.

samtools view -S -bh SRR23085866.sam > SRR23085866.bam

########### Now we need to sort the mapped reads by this command

samtools sort -T temp -O 'bam' SRR23085866.bam > SRR23085866_sorted.bam


########### Further we will generate a index file SRR23085866_sorted.bam for future use.
########### It will generate "SRR23085866_sorted.bam.bai" as output.

samtools index SRR23085866_sorted.bam


########### Here is the additional script for genome index generation
########### If you already downloaded the "Felis_catus.Felis_catus_9.0.dna.toplevel.fa.gz.fai" then ignore this command 
########### To run it remove the first "#" before the commend and run it 
########### It is different from the bowtie2 index file.
########### 

#samtools faidx Felis_catus.Felis_catus_9.0.dna.toplevel.fa





