#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR5810820' | tail -n +2)
if [[ $READ_RUN == *SRR5810820* ]]; then
     printf "SRR5810820"
else
     printf "not_found"
fi
