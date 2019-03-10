#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2965457' | tail -n +2)
if [[ $READ_RUN == *SRR2965457* ]]; then
     printf "SRR2965457"
else
     printf "not_found"
fi
