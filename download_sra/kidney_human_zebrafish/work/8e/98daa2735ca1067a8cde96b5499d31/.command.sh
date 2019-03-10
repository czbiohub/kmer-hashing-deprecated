#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR4050487' | tail -n +2)
if [[ $READ_RUN == *SRR4050487* ]]; then
     printf "SRR4050487"
else
     printf "not_found"
fi
