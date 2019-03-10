#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2963796' | tail -n +2)
if [[ $READ_RUN == *SRR2963796* ]]; then
     printf "SRR2963796"
else
     printf "not_found"
fi
