
#### Download the genome fasta file from https://asia.ensembl.org/Felis_catus/Info/Index as I have shown to you. Then upload to your docker working directory. 
#### Or you can directly download at docker via the underline script

wget https://ftp.ensembl.org/pub/release-113/fasta/felis_catus/dna_index/Felis_catus.Felis_catus_9.0.dna.toplevel.fa.gz

wget https://ftp.ensembl.org/pub/release-113/fasta/felis_catus/dna_index/Felis_catus.Felis_catus_9.0.dna.toplevel.fa.gz.fai

#### unzip the Felis_catus.Felis_catus_9.0.dna.toplevel.fa.gz file by 

gzip -d Felis_catus.Felis_catus_9.0.dna.toplevel.fa.gz

############ Everything is set. Let's make genome index. It is required for bowtie2 mapping
############ Note: "Felis_catus.Felis_catus_9.0.dna.toplevel.fa" is a large file so it will take time(30-40min) to complete the run. 
############ So increase the cpu by --threads 8 

bowtie2-build --threads 4 Felis_catus.Felis_catus_9.0.dna.toplevel.fa cat_index


############ it will generate 6 files like "cat_index.1.bt2" etc.

############ After this run, we have to do bowtie2 mapping. 


########### Always check docker files by

ls -l

########### You will get idea what is happening in the docker directory.  
 


