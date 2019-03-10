#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2963875' | tail -n +2)
if [[ $READ_RUN == *SRR2963875* ]]; then
     printf "SRR2963875"
else
     printf "not_found"
fi
