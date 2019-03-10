#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2964499' | tail -n +2)
if [[ $READ_RUN == *SRR2964499* ]]; then
     printf "SRR2964499"
else
     printf "not_found"
fi
