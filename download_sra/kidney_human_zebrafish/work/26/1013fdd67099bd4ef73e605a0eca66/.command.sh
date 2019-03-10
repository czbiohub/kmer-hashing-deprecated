#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2963283' | tail -n +2)
if [[ $READ_RUN == *SRR2963283* ]]; then
     printf "SRR2963283"
else
     printf "not_found"
fi
