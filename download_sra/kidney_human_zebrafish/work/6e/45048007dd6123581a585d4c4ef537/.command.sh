#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2963756' | tail -n +2)
if [[ $READ_RUN == *SRR2963756* ]]; then
     printf "SRR2963756"
else
     printf "not_found"
fi
