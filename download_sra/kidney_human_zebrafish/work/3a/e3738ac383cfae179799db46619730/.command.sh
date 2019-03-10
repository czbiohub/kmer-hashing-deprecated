#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2963107' | tail -n +2)
if [[ $READ_RUN == *SRR2963107* ]]; then
     printf "SRR2963107"
else
     printf "not_found"
fi
