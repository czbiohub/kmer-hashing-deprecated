#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR5810782' | tail -n +2)
if [[ $READ_RUN == *SRR5810782* ]]; then
     printf "SRR5810782"
else
     printf "not_found"
fi
