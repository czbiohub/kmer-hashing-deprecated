#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2965270' | tail -n +2)
if [[ $READ_RUN == *SRR2965270* ]]; then
     printf "SRR2965270"
else
     printf "not_found"
fi
