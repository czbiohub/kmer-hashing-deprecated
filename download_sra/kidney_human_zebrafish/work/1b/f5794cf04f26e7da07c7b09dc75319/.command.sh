#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR6506828' | tail -n +2)
if [[ $READ_RUN == *SRR6506828* ]]; then
     printf "SRR6506828"
else
     printf "not_found"
fi
