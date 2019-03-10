#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR4050652' | tail -n +2)
if [[ $READ_RUN == *SRR4050652* ]]; then
     printf "SRR4050652"
else
     printf "not_found"
fi
