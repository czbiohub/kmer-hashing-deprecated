#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR4050549' | tail -n +2)
if [[ $READ_RUN == *SRR4050549* ]]; then
     printf "SRR4050549"
else
     printf "not_found"
fi
