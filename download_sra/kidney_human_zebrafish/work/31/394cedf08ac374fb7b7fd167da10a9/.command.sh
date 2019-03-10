#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2963339' | tail -n +2)
if [[ $READ_RUN == *SRR2963339* ]]; then
     printf "SRR2963339"
else
     printf "not_found"
fi
