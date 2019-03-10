#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR4050384' | tail -n +2)
if [[ $READ_RUN == *SRR4050384* ]]; then
     printf "SRR4050384"
else
     printf "not_found"
fi
