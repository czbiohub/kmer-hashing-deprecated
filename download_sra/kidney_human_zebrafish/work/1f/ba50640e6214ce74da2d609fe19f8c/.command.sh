#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2963843' | tail -n +2)
if [[ $READ_RUN == *SRR2963843* ]]; then
     printf "SRR2963843"
else
     printf "not_found"
fi
