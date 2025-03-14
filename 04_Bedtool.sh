
############### read coverage estimation 
############### It convert the bam file into bed file


bedtools bamtobed -i SRR23085866_sorted.bam > SRR23085866_sorted.bed

############### Make sure that you have Felis_catus.Felis_catus_9.0.dna.toplevel.fa.gz.fai file in your working directory. 

bedtools genomecov -bg -i SRR23085866_sorted.bed -g Felis_catus.Felis_catus_9.0.dna.toplevel.fa.gz.fai > SRR23085866_integration.txt


############### So here is two output SRR23085866_sorted.bed and SRR23085866_integration.txt

############### This bed file is used to generate graphs. 
