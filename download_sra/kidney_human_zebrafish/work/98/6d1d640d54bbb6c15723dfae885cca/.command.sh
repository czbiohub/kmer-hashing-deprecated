#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR4050416' | tail -n +2)
if [[ $READ_RUN == *SRR4050416* ]]; then
     printf "SRR4050416"
else
     printf "not_found"
fi
