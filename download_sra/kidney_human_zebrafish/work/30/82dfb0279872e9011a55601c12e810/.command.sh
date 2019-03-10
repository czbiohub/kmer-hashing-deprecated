#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR5810915' | tail -n +2)
if [[ $READ_RUN == *SRR5810915* ]]; then
     printf "SRR5810915"
else
     printf "not_found"
fi
