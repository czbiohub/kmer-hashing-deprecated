#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR4051091' | tail -n +2)
if [[ $READ_RUN == *SRR4051091* ]]; then
     printf "SRR4051091"
else
     printf "not_found"
fi
