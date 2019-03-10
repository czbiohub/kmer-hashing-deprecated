#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR4052858' | tail -n +2)
if [[ $READ_RUN == *SRR4052858* ]]; then
     printf "SRR4052858"
else
     printf "not_found"
fi
