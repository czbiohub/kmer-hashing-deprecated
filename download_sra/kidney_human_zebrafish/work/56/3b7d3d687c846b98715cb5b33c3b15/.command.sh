#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR4050875' | tail -n +2)
if [[ $READ_RUN == *SRR4050875* ]]; then
     printf "SRR4050875"
else
     printf "not_found"
fi
