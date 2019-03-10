#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR4053026' | tail -n +2)
if [[ $READ_RUN == *SRR4053026* ]]; then
     printf "SRR4053026"
else
     printf "not_found"
fi
