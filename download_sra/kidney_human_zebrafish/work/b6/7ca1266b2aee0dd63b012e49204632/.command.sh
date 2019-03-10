#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR4053150' | tail -n +2)
if [[ $READ_RUN == *SRR4053150* ]]; then
     printf "SRR4053150"
else
     printf "not_found"
fi
