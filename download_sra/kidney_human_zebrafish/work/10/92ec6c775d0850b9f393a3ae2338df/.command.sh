#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2965304' | tail -n +2)
if [[ $READ_RUN == *SRR2965304* ]]; then
     printf "SRR2965304"
else
     printf "not_found"
fi
