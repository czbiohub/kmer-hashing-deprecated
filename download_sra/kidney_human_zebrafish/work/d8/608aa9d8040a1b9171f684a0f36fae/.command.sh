#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2963560' | tail -n +2)
if [[ $READ_RUN == *SRR2963560* ]]; then
     printf "SRR2963560"
else
     printf "not_found"
fi
