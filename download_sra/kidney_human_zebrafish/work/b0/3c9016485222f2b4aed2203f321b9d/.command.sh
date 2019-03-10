#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR4052739' | tail -n +2)
if [[ $READ_RUN == *SRR4052739* ]]; then
     printf "SRR4052739"
else
     printf "not_found"
fi
