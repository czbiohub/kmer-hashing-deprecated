#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2963353' | tail -n +2)
if [[ $READ_RUN == *SRR2963353* ]]; then
     printf "SRR2963353"
else
     printf "not_found"
fi
