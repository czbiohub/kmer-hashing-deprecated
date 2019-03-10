#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2963744' | tail -n +2)
if [[ $READ_RUN == *SRR2963744* ]]; then
     printf "SRR2963744"
else
     printf "not_found"
fi
