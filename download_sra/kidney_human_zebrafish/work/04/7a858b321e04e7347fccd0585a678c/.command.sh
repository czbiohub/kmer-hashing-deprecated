#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR4053111' | tail -n +2)
if [[ $READ_RUN == *SRR4053111* ]]; then
     printf "SRR4053111"
else
     printf "not_found"
fi
