#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR4050620' | tail -n +2)
if [[ $READ_RUN == *SRR4050620* ]]; then
     printf "SRR4050620"
else
     printf "not_found"
fi
