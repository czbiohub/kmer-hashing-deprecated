#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2965102' | tail -n +2)
if [[ $READ_RUN == *SRR2965102* ]]; then
     printf "SRR2965102"
else
     printf "not_found"
fi
