#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2963010' | tail -n +2)
if [[ $READ_RUN == *SRR2963010* ]]; then
     printf "SRR2963010"
else
     printf "not_found"
fi
