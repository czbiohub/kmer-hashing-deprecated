#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR4051044' | tail -n +2)
if [[ $READ_RUN == *SRR4051044* ]]; then
     printf "SRR4051044"
else
     printf "not_found"
fi
