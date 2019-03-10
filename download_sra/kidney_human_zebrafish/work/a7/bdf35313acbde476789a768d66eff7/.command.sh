#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2964523' | tail -n +2)
if [[ $READ_RUN == *SRR2964523* ]]; then
     printf "SRR2964523"
else
     printf "not_found"
fi
