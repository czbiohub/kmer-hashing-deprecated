#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2963937' | tail -n +2)
if [[ $READ_RUN == *SRR2963937* ]]; then
     printf "SRR2963937"
else
     printf "not_found"
fi
