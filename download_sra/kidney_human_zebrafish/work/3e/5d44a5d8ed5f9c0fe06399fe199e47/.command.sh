#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR4050595' | tail -n +2)
if [[ $READ_RUN == *SRR4050595* ]]; then
     printf "SRR4050595"
else
     printf "not_found"
fi
