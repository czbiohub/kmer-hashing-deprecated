#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2963629' | tail -n +2)
if [[ $READ_RUN == *SRR2963629* ]]; then
     printf "SRR2963629"
else
     printf "not_found"
fi
