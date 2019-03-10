#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR4052936' | tail -n +2)
if [[ $READ_RUN == *SRR4052936* ]]; then
     printf "SRR4052936"
else
     printf "not_found"
fi
