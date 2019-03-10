#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR4052864' | tail -n +2)
if [[ $READ_RUN == *SRR4052864* ]]; then
     printf "SRR4052864"
else
     printf "not_found"
fi
