#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR5810855' | tail -n +2)
if [[ $READ_RUN == *SRR5810855* ]]; then
     printf "SRR5810855"
else
     printf "not_found"
fi
