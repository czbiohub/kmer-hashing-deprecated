#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR4051076' | tail -n +2)
if [[ $READ_RUN == *SRR4051076* ]]; then
     printf "SRR4051076"
else
     printf "not_found"
fi
