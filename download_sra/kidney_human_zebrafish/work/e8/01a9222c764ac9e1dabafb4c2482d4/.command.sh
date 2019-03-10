#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2965272' | tail -n +2)
if [[ $READ_RUN == *SRR2965272* ]]; then
     printf "SRR2965272"
else
     printf "not_found"
fi
