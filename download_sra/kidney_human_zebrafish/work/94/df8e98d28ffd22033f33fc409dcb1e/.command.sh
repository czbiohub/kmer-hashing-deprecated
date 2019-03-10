#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR4050827' | tail -n +2)
if [[ $READ_RUN == *SRR4050827* ]]; then
     printf "SRR4050827"
else
     printf "not_found"
fi
