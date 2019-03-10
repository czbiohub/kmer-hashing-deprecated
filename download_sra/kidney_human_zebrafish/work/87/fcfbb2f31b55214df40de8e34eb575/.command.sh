#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2964338' | tail -n +2)
if [[ $READ_RUN == *SRR2964338* ]]; then
     printf "SRR2964338"
else
     printf "not_found"
fi
