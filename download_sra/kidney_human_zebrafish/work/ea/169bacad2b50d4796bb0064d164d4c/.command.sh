#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR4050740' | tail -n +2)
if [[ $READ_RUN == *SRR4050740* ]]; then
     printf "SRR4050740"
else
     printf "not_found"
fi
