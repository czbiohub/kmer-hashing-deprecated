#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR4050617' | tail -n +2)
if [[ $READ_RUN == *SRR4050617* ]]; then
     printf "SRR4050617"
else
     printf "not_found"
fi
