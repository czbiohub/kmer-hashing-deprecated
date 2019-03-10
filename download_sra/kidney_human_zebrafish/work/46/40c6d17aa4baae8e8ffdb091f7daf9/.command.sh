#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2963041' | tail -n +2)
if [[ $READ_RUN == *SRR2963041* ]]; then
     printf "SRR2963041"
else
     printf "not_found"
fi
