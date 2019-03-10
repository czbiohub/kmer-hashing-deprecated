#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2965400' | tail -n +2)
if [[ $READ_RUN == *SRR2965400* ]]; then
     printf "SRR2965400"
else
     printf "not_found"
fi
