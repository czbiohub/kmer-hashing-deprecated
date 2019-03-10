#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR4050881' | tail -n +2)
if [[ $READ_RUN == *SRR4050881* ]]; then
     printf "SRR4050881"
else
     printf "not_found"
fi
