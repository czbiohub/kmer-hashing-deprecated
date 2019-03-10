#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2963135' | tail -n +2)
if [[ $READ_RUN == *SRR2963135* ]]; then
     printf "SRR2963135"
else
     printf "not_found"
fi
