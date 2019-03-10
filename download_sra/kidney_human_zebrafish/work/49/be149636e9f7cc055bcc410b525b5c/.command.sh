#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR4053139' | tail -n +2)
if [[ $READ_RUN == *SRR4053139* ]]; then
     printf "SRR4053139"
else
     printf "not_found"
fi
