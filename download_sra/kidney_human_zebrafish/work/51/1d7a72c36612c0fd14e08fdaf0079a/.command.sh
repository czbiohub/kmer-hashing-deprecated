#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR4052780' | tail -n +2)
if [[ $READ_RUN == *SRR4052780* ]]; then
     printf "SRR4052780"
else
     printf "not_found"
fi
