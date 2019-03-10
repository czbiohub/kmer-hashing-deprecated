#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR4050611' | tail -n +2)
if [[ $READ_RUN == *SRR4050611* ]]; then
     printf "SRR4050611"
else
     printf "not_found"
fi
