#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2964665' | tail -n +2)
if [[ $READ_RUN == *SRR2964665* ]]; then
     printf "SRR2964665"
else
     printf "not_found"
fi
