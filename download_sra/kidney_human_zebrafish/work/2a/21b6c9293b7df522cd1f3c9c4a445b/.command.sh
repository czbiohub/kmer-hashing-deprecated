#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR4050931' | tail -n +2)
if [[ $READ_RUN == *SRR4050931* ]]; then
     printf "SRR4050931"
else
     printf "not_found"
fi
