#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR4051114' | tail -n +2)
if [[ $READ_RUN == *SRR4051114* ]]; then
     printf "SRR4051114"
else
     printf "not_found"
fi
