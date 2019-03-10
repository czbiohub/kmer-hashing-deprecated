#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR4051049' | tail -n +2)
if [[ $READ_RUN == *SRR4051049* ]]; then
     printf "SRR4051049"
else
     printf "not_found"
fi
