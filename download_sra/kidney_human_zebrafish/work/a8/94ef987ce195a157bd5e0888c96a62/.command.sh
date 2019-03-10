#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2963511' | tail -n +2)
if [[ $READ_RUN == *SRR2963511* ]]; then
     printf "SRR2963511"
else
     printf "not_found"
fi
