#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2963411' | tail -n +2)
if [[ $READ_RUN == *SRR2963411* ]]; then
     printf "SRR2963411"
else
     printf "not_found"
fi
