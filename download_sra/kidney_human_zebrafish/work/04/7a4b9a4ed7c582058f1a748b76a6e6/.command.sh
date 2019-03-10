#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2965154' | tail -n +2)
if [[ $READ_RUN == *SRR2965154* ]]; then
     printf "SRR2965154"
else
     printf "not_found"
fi
