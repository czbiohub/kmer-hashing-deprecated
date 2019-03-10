#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2965220' | tail -n +2)
if [[ $READ_RUN == *SRR2965220* ]]; then
     printf "SRR2965220"
else
     printf "not_found"
fi
