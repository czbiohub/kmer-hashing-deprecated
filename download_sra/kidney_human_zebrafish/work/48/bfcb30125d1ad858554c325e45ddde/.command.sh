#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2963472' | tail -n +2)
if [[ $READ_RUN == *SRR2963472* ]]; then
     printf "SRR2963472"
else
     printf "not_found"
fi
