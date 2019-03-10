#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2963943' | tail -n +2)
if [[ $READ_RUN == *SRR2963943* ]]; then
     printf "SRR2963943"
else
     printf "not_found"
fi
