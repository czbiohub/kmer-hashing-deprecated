#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR7130925' | tail -n +2)
if [[ $READ_RUN == *SRR7130925* ]]; then
     printf "SRR7130925"
else
     printf "not_found"
fi
