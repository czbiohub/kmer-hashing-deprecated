#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR4051059' | tail -n +2)
if [[ $READ_RUN == *SRR4051059* ]]; then
     printf "SRR4051059"
else
     printf "not_found"
fi
