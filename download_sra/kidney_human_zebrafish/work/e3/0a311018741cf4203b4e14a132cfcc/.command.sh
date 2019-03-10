#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2963280' | tail -n +2)
if [[ $READ_RUN == *SRR2963280* ]]; then
     printf "SRR2963280"
else
     printf "not_found"
fi
