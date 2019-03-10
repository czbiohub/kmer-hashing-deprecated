#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2964562' | tail -n +2)
if [[ $READ_RUN == *SRR2964562* ]]; then
     printf "SRR2964562"
else
     printf "not_found"
fi
