#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR4050692' | tail -n +2)
if [[ $READ_RUN == *SRR4050692* ]]; then
     printf "SRR4050692"
else
     printf "not_found"
fi
