#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2963978' | tail -n +2)
if [[ $READ_RUN == *SRR2963978* ]]; then
     printf "SRR2963978"
else
     printf "not_found"
fi
