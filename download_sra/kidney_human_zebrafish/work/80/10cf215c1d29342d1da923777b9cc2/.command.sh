#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2963355' | tail -n +2)
if [[ $READ_RUN == *SRR2963355* ]]; then
     printf "SRR2963355"
else
     printf "not_found"
fi
