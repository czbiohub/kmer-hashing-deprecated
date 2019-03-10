#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2965345' | tail -n +2)
if [[ $READ_RUN == *SRR2965345* ]]; then
     printf "SRR2965345"
else
     printf "not_found"
fi
