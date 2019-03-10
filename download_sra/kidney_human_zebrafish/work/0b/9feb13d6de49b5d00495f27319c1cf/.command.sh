#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2965371' | tail -n +2)
if [[ $READ_RUN == *SRR2965371* ]]; then
     printf "SRR2965371"
else
     printf "not_found"
fi
