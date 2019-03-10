#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2964129' | tail -n +2)
if [[ $READ_RUN == *SRR2964129* ]]; then
     printf "SRR2964129"
else
     printf "not_found"
fi
