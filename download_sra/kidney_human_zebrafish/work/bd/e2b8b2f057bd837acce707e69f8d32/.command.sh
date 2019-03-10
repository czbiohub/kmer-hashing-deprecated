#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR5810888' | tail -n +2)
if [[ $READ_RUN == *SRR5810888* ]]; then
     printf "SRR5810888"
else
     printf "not_found"
fi
