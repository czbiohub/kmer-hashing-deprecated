#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR4051050' | tail -n +2)
if [[ $READ_RUN == *SRR4051050* ]]; then
     printf "SRR4051050"
else
     printf "not_found"
fi
