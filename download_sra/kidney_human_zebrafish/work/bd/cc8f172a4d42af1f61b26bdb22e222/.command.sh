#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2963663' | tail -n +2)
if [[ $READ_RUN == *SRR2963663* ]]; then
     printf "SRR2963663"
else
     printf "not_found"
fi
