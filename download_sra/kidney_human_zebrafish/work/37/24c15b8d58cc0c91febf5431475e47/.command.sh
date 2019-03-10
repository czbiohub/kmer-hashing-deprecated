#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2963246' | tail -n +2)
if [[ $READ_RUN == *SRR2963246* ]]; then
     printf "SRR2963246"
else
     printf "not_found"
fi
