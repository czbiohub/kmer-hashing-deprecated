#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR4050443' | tail -n +2)
if [[ $READ_RUN == *SRR4050443* ]]; then
     printf "SRR4050443"
else
     printf "not_found"
fi
