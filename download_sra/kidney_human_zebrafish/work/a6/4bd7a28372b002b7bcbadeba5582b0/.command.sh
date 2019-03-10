#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR4050519' | tail -n +2)
if [[ $READ_RUN == *SRR4050519* ]]; then
     printf "SRR4050519"
else
     printf "not_found"
fi
