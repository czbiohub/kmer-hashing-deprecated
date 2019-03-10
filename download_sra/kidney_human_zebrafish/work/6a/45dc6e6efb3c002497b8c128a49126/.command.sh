#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR4051010' | tail -n +2)
if [[ $READ_RUN == *SRR4051010* ]]; then
     printf "SRR4051010"
else
     printf "not_found"
fi
