#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2963505' | tail -n +2)
if [[ $READ_RUN == *SRR2963505* ]]; then
     printf "SRR2963505"
else
     printf "not_found"
fi
