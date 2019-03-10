#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR5810732' | tail -n +2)
if [[ $READ_RUN == *SRR5810732* ]]; then
     printf "SRR5810732"
else
     printf "not_found"
fi
