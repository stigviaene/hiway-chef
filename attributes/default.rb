include_attribute "hadoop"

#default[:hiway][:resolution]                       = "1024x768x32"
default[:hiway][:release]                           = "true"
default[:hiway][:user]                              = "hiway"
default[:hiway][:home]                              = "/home/#{node[:hiway][:user]}"
default[:hiway][:data]                              = node[:hiway][:home]
default[:hiway][:software][:dir]                    = node[:hadoop][:dir]

default[:hiway][:hiway][:release][:version]         = "1.0.0-beta"
default[:hiway][:hiway][:snapshot][:version]        = "1.0.1-SNAPSHOT"
if node[:hiway][:release] == "true"
  default[:hiway][:hiway][:version]                 = "#{node[:hiway][:hiway][:release][:version]}"
else
  default[:hiway][:hiway][:version]                 = "#{node[:hiway][:hiway][:snapshot][:version]}"
end
default[:hiway][:hiway][:release][:targz]           = "hiway-dist-#{node[:hiway][:hiway][:release][:version]}.tar.gz"
default[:hiway][:hiway][:release][:url]             = "https://github.com/marcbux/Hi-WAY/releases/download/#{node[:hiway][:hiway][:release][:version]}/#{node[:hiway][:hiway][:release][:targz]}"
default[:hiway][:hiway][:github_url]                = "https://github.com/marcbux/Hi-WAY.git"
default[:hiway][:hiway][:home]                      = "#{node[:hiway][:software][:dir]}/hiway-#{node[:hiway][:hiway][:version]}"
default[:hiway][:hiway][:hdfs][:basedir]            = "/"
default[:hiway][:hiway][:am][:memory_mb]            = 512
default[:hiway][:hiway][:am][:vcores]               = 1
default[:hiway][:hiway][:worker][:memory_mb]        = 1024
default[:hiway][:hiway][:worker][:vcores]           = 1
default[:hiway][:hiway][:scheduler]                 = "placementAware"

default[:hiway][:cuneiform][:release][:version]     = "2.0.0-beta"
default[:hiway][:cuneiform][:snapshot][:version]    = "2.0.1-SNAPSHOT"
if node[:hiway][:release] == "true"
  default[:hiway][:cuneiform][:version]             = "#{node[:hiway][:cuneiform][:release][:version]}"
else
  default[:hiway][:cuneiform][:version]             = "#{node[:hiway][:cuneiform][:snapshot][:version]}"
end
default[:hiway][:cuneiform][:release][:targz]       = "cuneiform-dist-#{node[:hiway][:cuneiform][:release][:version]}.tar.gz"
default[:hiway][:cuneiform][:release][:url]         = "https://github.com/joergen7/cuneiform/releases/download/#{node[:hiway][:cuneiform][:release][:version]}/#{node[:hiway][:cuneiform][:release][:targz]}"
default[:hiway][:cuneiform][:github_url]            = "https://github.com/joergen7/cuneiform.git"
default[:hiway][:cuneiform][:home]                  = "#{node[:hiway][:software][:dir]}/cuneiform-#{node[:hiway][:cuneiform][:version]}"
default[:hiway][:cuneiform][:r_packages]            = "node[:hiway][:software][:dir]/r_packages"
default[:hiway][:cuneiform][:cache]                 = "/tmp/cf-cache"

default[:hiway][:galaxy][:repository]               = "https://bitbucket.org/galaxy/galaxy-dist/"
default[:hiway][:galaxy][:home]                     = "#{node[:hiway][:software][:dir]}/galaxy"
default[:hiway][:galaxy][:master_api_key]           = "reverse"
# name of at least four lower-case characters, numbers, or the "-" character
default[:hiway][:galaxy][:user][:name]              = "#{node[:hiway][:user]}"
# password of at least six characters
default[:hiway][:galaxy][:user][:password]          = "#{node[:hiway][:galaxy][:master_api_key]}"
default[:hiway][:galaxy][:user][:email]             = "hiway@hiway.com"

default[:hiway][:helloworld][:workflow]             = "helloworld.cf"

default[:hiway][:wordcount][:workflow]              = "wordcount.cf"
default[:hiway][:wordcount][:input][:url]           = "http://stateoftheunion.onetwothree.net/texts/stateoftheunion1790-2014.txt.zip"
default[:hiway][:wordcount][:input][:zip]           = "stateoftheunion1790-2014.zip"
default[:hiway][:wordcount][:input][:txt]           = "stateoftheunion1790-2014.txt"

default[:hiway][:variantcall][:workflow]              = "variantcall.cf"
default[:hiway][:variantcall][:threads]               = "#{node[:hiway][:hiway][:worker][:vcores]}"
default[:hiway][:variantcall][:memory_mb]             = "#{node[:hiway][:hiway][:worker][:memory_mb]}"

default[:hiway][:variantcall][:reads][:sample_id]     = "HG02025"
default[:hiway][:variantcall][:reads][:run_ids]       = ["SRR359188", "SRR359195"]
default[:hiway][:variantcall][:reads][:url_base]      = "ftp://ftp.1000genomes.ebi.ac.uk/vol1/ftp/data/#{node[:hiway][:variantcall][:reads][:sample_id]}/sequence_read"

default[:hiway][:variantcall][:reference][:id]          = "hg38" 
default[:hiway][:variantcall][:reference][:chromosomes] = ["chr22", "chrY"]
default[:hiway][:variantcall][:reference][:url_base]    = "ftp://hgdownload.soe.ucsc.edu/apache/htdocs/goldenPath/#{node[:hiway][:variantcall][:reference][:id]}/chromosomes"

default[:hiway][:variantcall][:annovardb][:directory] = "annodb"
default[:hiway][:variantcall][:annovardb][:file]      = "hg38db.tar"
default[:hiway][:variantcall][:bowtie2][:version]   = "2.2.5"
default[:hiway][:variantcall][:bowtie2][:zip]       = "bowtie2-#{node[:hiway][:variantcall][:bowtie2][:version]}-linux-x86_64.zip"
default[:hiway][:variantcall][:bowtie2][:home]      = "#{node[:hiway][:software][:dir]}/bowtie2-#{node[:hiway][:variantcall][:bowtie2][:version]}"
default[:hiway][:variantcall][:bowtie2][:url]       = "http://downloads.sourceforge.net/project/bowtie-bio/bowtie2/#{node[:hiway][:variantcall][:bowtie2][:version]}/#{node[:hiway][:variantcall][:bowtie2][:zip]}"
default[:hiway][:variantcall][:bwa][:version]       = "0.7.12"
default[:hiway][:variantcall][:bwa][:tarbz2]        = "bwa-#{node[:hiway][:variantcall][:bwa][:version]}.tar.bz2"
default[:hiway][:variantcall][:bwa][:home]          = "#{node[:hiway][:software][:dir]}/bwa-#{node[:hiway][:variantcall][:bwa][:version]}"
default[:hiway][:variantcall][:bwa][:url]           = "http://downloads.sourceforge.net/project/bio-bwa/#{node[:hiway][:variantcall][:bwa][:tarbz2]}"
default[:hiway][:variantcall][:samtools][:version]  = "1.2"
default[:hiway][:variantcall][:samtools][:tarbz2]   = "samtools-#{node[:hiway][:variantcall][:samtools][:version]}.tar.bz2"
default[:hiway][:variantcall][:samtools][:home]     = "#{node[:hiway][:software][:dir]}/samtools-#{node[:hiway][:variantcall][:samtools][:version]}"
default[:hiway][:variantcall][:samtools][:url]      = "http://garr.dl.sourceforge.net/project/samtools/samtools/#{node[:hiway][:variantcall][:samtools][:version]}/#{node[:hiway][:variantcall][:samtools][:tarbz2]}"
default[:hiway][:variantcall][:varscan][:version]   = "2.3.7"
default[:hiway][:variantcall][:varscan][:jar]       = "VarScan.v#{node[:hiway][:variantcall][:varscan][:version]}.jar"
default[:hiway][:variantcall][:varscan][:home]      = "#{node[:hiway][:software][:dir]}/varscan-#{node[:hiway][:variantcall][:samtools][:version]}"
default[:hiway][:variantcall][:varscan][:url]       = "http://downloads.sourceforge.net/project/varscan/#{node[:hiway][:variantcall][:varscan][:jar]}"
default[:hiway][:variantcall][:annovar][:targz]     = "annovar.latest.tar.gz"
default[:hiway][:variantcall][:annovar][:home]      = "#{node[:hiway][:software][:dir]}/annovar"
default[:hiway][:variantcall][:annovar][:url]       = "http://www.openbioinformatics.org/annovar/download/0wgxR2rIVP/#{node[:hiway][:variantcall][:annovar][:targz]}"

default[:hiway][:montage_synthetic][:workflow]       = "Montage_25.xml"
default[:hiway][:montage_synthetic][:url]            = "https://confluence.pegasus.isi.edu/download/attachments/2490624/#{node[:hiway][:montage_synthetic][:workflow]}"

default[:hiway][:montage_m17_4][:workflow]           = "montage_m17_4.dax"
default[:hiway][:montage_m17_4][:montage][:version]  = "3.3"
default[:hiway][:montage_m17_4][:montage][:targz]    = "Montage_v#{node[:hiway][:montage_m17_4][:montage][:version]}.tar.gz"
default[:hiway][:montage_m17_4][:montage][:home]     = "#{node[:hiway][:software][:dir]}/Montage_v#{node[:hiway][:montage_m17_4][:montage][:version]}"
default[:hiway][:montage_m17_4][:montage][:url]      = "http://montage.ipac.caltech.edu/download/#{node[:hiway][:montage_m17_4][:montage][:targz]}"

default[:hiway][:galaxy101][:workflow]               = "galaxy101.ga"
default[:hiway][:galaxy101][:exons][:bed]            = "Exons.bed"
default[:hiway][:galaxy101][:exons][:targz]          = "#{node[:hiway][:galaxy101][:exons][:bed]}.tar.gz"
default[:hiway][:galaxy101][:snps][:bed]             = "SNPs.bed"
default[:hiway][:galaxy101][:snps][:targz]           = "#{node[:hiway][:galaxy101][:snps][:bed]}.tar.gz"
default[:hiway][:galaxy101][:join][:name]            = "join"
default[:hiway][:galaxy101][:join][:revision]        = "de21bdbb8d28"

default[:hiway][:RNAseq][:workflow]                            = "RNAseq.ga"
default[:hiway][:RNAseq][:ref_annotation][:gtf]                = "mm9_ref_annotation.gtf"
default[:hiway][:RNAseq][:ref_annotation][:targz]              = "#{node[:hiway][:RNAseq][:ref_annotation][:gtf]}.tar.gz"
default[:hiway][:RNAseq][:sratoolkit][:version]                = "2.4.5-2"
default[:hiway][:RNAseq][:sratoolkit][:targz]                  = "sratoolkit.#{node[:hiway][:RNAseq][:sratoolkit][:version]}-ubuntu64.tar.gz"
default[:hiway][:RNAseq][:sratoolkit][:home]                   = "#{node[:hiway][:software][:dir]}/sratoolkit.#{node[:hiway][:RNAseq][:sratoolkit][:version]}-ubuntu64"
default[:hiway][:RNAseq][:sratoolkit][:url]                    = "http://ftp-trace.ncbi.nlm.nih.gov/sra/sdk/#{node[:hiway][:RNAseq][:sratoolkit][:version]}/#{node[:hiway][:RNAseq][:sratoolkit][:targz]}"
default[:hiway][:RNAseq][:input1][:replicate1][:accession]    = "SRR1632911"
default[:hiway][:RNAseq][:input1][:replicate1][:fastq]        = "GSM1533014_MD_O1_WT_Colon.fastqsanger"
default[:hiway][:RNAseq][:input1][:replicate2][:accession]    = "SRR1632912"
default[:hiway][:RNAseq][:input1][:replicate2][:fastq]        = "GSM1533014_MD_O2_WT_Colon.fastqsanger"
default[:hiway][:RNAseq][:input1][:replicate3][:accession]    = "SRR1632913"
default[:hiway][:RNAseq][:input1][:replicate3][:fastq]        = "GSM1533014_MD_O3_WT_Colon.fastqsanger"
default[:hiway][:RNAseq][:input2][:replicate1][:accession]    = "SRR1632942"
default[:hiway][:RNAseq][:input2][:replicate1][:fastq]        = "GSM1533014_MD_Y1_WT_Colon.fastqsanger"
default[:hiway][:RNAseq][:input2][:replicate2][:accession]    = "SRR1632943"
default[:hiway][:RNAseq][:input2][:replicate2][:fastq]        = "GSM1533014_MD_Y2_WT_Colon.fastqsanger"
default[:hiway][:RNAseq][:input2][:replicate3][:accession]    = "SRR1632944"
default[:hiway][:RNAseq][:input2][:replicate3][:fastq]        = "GSM1533014_MD_Y3_WT_Colon.fastqsanger"
default[:hiway][:RNAseq][:fastq_trimmer_by_quality][:name]     = "fastq_trimmer_by_quality"
default[:hiway][:RNAseq][:fastq_trimmer_by_quality][:revision] = "1cdcaf5fc1da"
default[:hiway][:RNAseq][:fastqc][:name]                       = "fastqc"
default[:hiway][:RNAseq][:fastqc][:revision]                   = "e28c965eeed4"
default[:hiway][:RNAseq][:fastx_clipper][:name]                = "fastx_clipper"
default[:hiway][:RNAseq][:fastx_clipper][:revision]            = "8192b4014977"
default[:hiway][:RNAseq][:tophat2][:name]                      = "tophat2"
default[:hiway][:RNAseq][:tophat2][:revision]                  = "ae06af1118dc"
default[:hiway][:RNAseq][:picard][:name]                       = "picard"
default[:hiway][:RNAseq][:picard][:revision]                   = "ab1f60c26526"
default[:hiway][:RNAseq][:cufflinks][:name]                    = "cufflinks"
default[:hiway][:RNAseq][:cufflinks][:revision]                = "9aab29e159a7"
default[:hiway][:RNAseq][:cuffmerge][:name]                    = "cuffmerge"
default[:hiway][:RNAseq][:cuffmerge][:revision]                = "424d49834830"
default[:hiway][:RNAseq][:cuffcompare][:name]                  = "cuffcompare"
default[:hiway][:RNAseq][:cuffcompare][:revision]              = "67695d7ff787"
default[:hiway][:RNAseq][:cuffdiff][:name]                     = "cuffdiff"
default[:hiway][:RNAseq][:cuffdiff][:revision]                 = "604fa75232a2"
default[:hiway][:RNAseq][:column_maker][:name]                 = "column_maker"
default[:hiway][:RNAseq][:column_maker][:revision]             = "08a01b2ce4cd"
