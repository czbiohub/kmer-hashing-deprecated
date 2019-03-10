#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2963817' | tail -n +2)
if [[ $READ_RUN == *SRR2963817* ]]; then
     printf "SRR2963817"
else
     printf "not_found"
fi
