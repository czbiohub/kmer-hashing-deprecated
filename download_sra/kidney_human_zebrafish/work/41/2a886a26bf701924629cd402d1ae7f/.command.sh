#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2963528' | tail -n +2)
if [[ $READ_RUN == *SRR2963528* ]]; then
     printf "SRR2963528"
else
     printf "not_found"
fi
