#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2963851' | tail -n +2)
if [[ $READ_RUN == *SRR2963851* ]]; then
     printf "SRR2963851"
else
     printf "not_found"
fi
