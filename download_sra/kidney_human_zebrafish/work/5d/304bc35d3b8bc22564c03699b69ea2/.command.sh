#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2963240' | tail -n +2)
if [[ $READ_RUN == *SRR2963240* ]]; then
     printf "SRR2963240"
else
     printf "not_found"
fi
