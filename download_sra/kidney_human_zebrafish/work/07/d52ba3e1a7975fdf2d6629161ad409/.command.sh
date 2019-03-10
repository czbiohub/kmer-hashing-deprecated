#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2965188' | tail -n +2)
if [[ $READ_RUN == *SRR2965188* ]]; then
     printf "SRR2965188"
else
     printf "not_found"
fi
