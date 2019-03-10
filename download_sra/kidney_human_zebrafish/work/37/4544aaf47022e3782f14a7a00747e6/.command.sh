#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2965073' | tail -n +2)
if [[ $READ_RUN == *SRR2965073* ]]; then
     printf "SRR2965073"
else
     printf "not_found"
fi
