#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR4050948' | tail -n +2)
if [[ $READ_RUN == *SRR4050948* ]]; then
     printf "SRR4050948"
else
     printf "not_found"
fi
