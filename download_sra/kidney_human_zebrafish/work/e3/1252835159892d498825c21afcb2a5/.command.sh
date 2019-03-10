#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR4050608' | tail -n +2)
if [[ $READ_RUN == *SRR4050608* ]]; then
     printf "SRR4050608"
else
     printf "not_found"
fi
