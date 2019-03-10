#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2963352' | tail -n +2)
if [[ $READ_RUN == *SRR2963352* ]]; then
     printf "SRR2963352"
else
     printf "not_found"
fi
