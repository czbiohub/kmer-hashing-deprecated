#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2965362' | tail -n +2)
if [[ $READ_RUN == *SRR2965362* ]]; then
     printf "SRR2965362"
else
     printf "not_found"
fi
