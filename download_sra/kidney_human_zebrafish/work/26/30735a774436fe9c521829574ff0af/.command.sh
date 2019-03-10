#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR4050645' | tail -n +2)
if [[ $READ_RUN == *SRR4050645* ]]; then
     printf "SRR4050645"
else
     printf "not_found"
fi
