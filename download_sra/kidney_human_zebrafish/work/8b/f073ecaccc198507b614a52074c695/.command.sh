#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR4050660' | tail -n +2)
if [[ $READ_RUN == *SRR4050660* ]]; then
     printf "SRR4050660"
else
     printf "not_found"
fi
