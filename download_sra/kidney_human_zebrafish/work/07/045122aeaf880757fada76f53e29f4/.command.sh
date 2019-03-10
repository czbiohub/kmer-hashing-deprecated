#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR4050888' | tail -n +2)
if [[ $READ_RUN == *SRR4050888* ]]; then
     printf "SRR4050888"
else
     printf "not_found"
fi
