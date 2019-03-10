#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2963618' | tail -n +2)
if [[ $READ_RUN == *SRR2963618* ]]; then
     printf "SRR2963618"
else
     printf "not_found"
fi
