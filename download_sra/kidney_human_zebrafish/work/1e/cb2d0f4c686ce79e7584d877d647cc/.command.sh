#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR4050790' | tail -n +2)
if [[ $READ_RUN == *SRR4050790* ]]; then
     printf "SRR4050790"
else
     printf "not_found"
fi
