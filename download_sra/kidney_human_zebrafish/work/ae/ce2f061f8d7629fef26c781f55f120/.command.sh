#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR5810740' | tail -n +2)
if [[ $READ_RUN == *SRR5810740* ]]; then
     printf "SRR5810740"
else
     printf "not_found"
fi
