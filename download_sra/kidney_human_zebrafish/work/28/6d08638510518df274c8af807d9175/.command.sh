#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR5810707' | tail -n +2)
if [[ $READ_RUN == *SRR5810707* ]]; then
     printf "SRR5810707"
else
     printf "not_found"
fi
