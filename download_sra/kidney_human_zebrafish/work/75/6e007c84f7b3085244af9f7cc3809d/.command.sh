#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR4051026' | tail -n +2)
if [[ $READ_RUN == *SRR4051026* ]]; then
     printf "SRR4051026"
else
     printf "not_found"
fi
