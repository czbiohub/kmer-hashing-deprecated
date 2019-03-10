#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2963018' | tail -n +2)
if [[ $READ_RUN == *SRR2963018* ]]; then
     printf "SRR2963018"
else
     printf "not_found"
fi
