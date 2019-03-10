#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR5810927' | tail -n +2)
if [[ $READ_RUN == *SRR5810927* ]]; then
     printf "SRR5810927"
else
     printf "not_found"
fi
