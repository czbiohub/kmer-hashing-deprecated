#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR4050562' | tail -n +2)
if [[ $READ_RUN == *SRR4050562* ]]; then
     printf "SRR4050562"
else
     printf "not_found"
fi
