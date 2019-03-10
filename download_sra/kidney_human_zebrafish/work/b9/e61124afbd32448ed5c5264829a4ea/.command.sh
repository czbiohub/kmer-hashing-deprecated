#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2963442' | tail -n +2)
if [[ $READ_RUN == *SRR2963442* ]]; then
     printf "SRR2963442"
else
     printf "not_found"
fi
