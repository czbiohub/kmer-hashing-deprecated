#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR4053145' | tail -n +2)
if [[ $READ_RUN == *SRR4053145* ]]; then
     printf "SRR4053145"
else
     printf "not_found"
fi
