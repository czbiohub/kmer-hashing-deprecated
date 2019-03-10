#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2965336' | tail -n +2)
if [[ $READ_RUN == *SRR2965336* ]]; then
     printf "SRR2965336"
else
     printf "not_found"
fi
