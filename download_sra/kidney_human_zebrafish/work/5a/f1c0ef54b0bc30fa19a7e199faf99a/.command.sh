#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR4050664' | tail -n +2)
if [[ $READ_RUN == *SRR4050664* ]]; then
     printf "SRR4050664"
else
     printf "not_found"
fi
