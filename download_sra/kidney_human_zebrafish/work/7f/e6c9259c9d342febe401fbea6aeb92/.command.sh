#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2964707' | tail -n +2)
if [[ $READ_RUN == *SRR2964707* ]]; then
     printf "SRR2964707"
else
     printf "not_found"
fi
