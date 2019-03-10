#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR4053211' | tail -n +2)
if [[ $READ_RUN == *SRR4053211* ]]; then
     printf "SRR4053211"
else
     printf "not_found"
fi
