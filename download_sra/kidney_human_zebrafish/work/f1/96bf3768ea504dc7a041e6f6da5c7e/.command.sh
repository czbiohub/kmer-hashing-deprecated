#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR4053170' | tail -n +2)
if [[ $READ_RUN == *SRR4053170* ]]; then
     printf "SRR4053170"
else
     printf "not_found"
fi
