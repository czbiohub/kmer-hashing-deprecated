#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2965342' | tail -n +2)
if [[ $READ_RUN == *SRR2965342* ]]; then
     printf "SRR2965342"
else
     printf "not_found"
fi
