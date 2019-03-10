#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2963639' | tail -n +2)
if [[ $READ_RUN == *SRR2963639* ]]; then
     printf "SRR2963639"
else
     printf "not_found"
fi
