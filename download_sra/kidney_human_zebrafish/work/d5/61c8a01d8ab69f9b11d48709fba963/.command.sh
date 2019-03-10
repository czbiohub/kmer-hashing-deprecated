#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR5810701' | tail -n +2)
if [[ $READ_RUN == *SRR5810701* ]]; then
     printf "SRR5810701"
else
     printf "not_found"
fi
