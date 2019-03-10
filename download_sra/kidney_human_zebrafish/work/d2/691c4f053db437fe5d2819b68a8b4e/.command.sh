#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2962998' | tail -n +2)
if [[ $READ_RUN == *SRR2962998* ]]; then
     printf "SRR2962998"
else
     printf "not_found"
fi
