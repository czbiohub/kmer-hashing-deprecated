#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2965141' | tail -n +2)
if [[ $READ_RUN == *SRR2965141* ]]; then
     printf "SRR2965141"
else
     printf "not_found"
fi
