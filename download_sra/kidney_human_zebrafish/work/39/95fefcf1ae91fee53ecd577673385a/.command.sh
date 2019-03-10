#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR4053017' | tail -n +2)
if [[ $READ_RUN == *SRR4053017* ]]; then
     printf "SRR4053017"
else
     printf "not_found"
fi
