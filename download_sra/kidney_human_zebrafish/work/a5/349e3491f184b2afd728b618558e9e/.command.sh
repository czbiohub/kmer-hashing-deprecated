#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR4052791' | tail -n +2)
if [[ $READ_RUN == *SRR4052791* ]]; then
     printf "SRR4052791"
else
     printf "not_found"
fi
