#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR4050852' | tail -n +2)
if [[ $READ_RUN == *SRR4050852* ]]; then
     printf "SRR4050852"
else
     printf "not_found"
fi
