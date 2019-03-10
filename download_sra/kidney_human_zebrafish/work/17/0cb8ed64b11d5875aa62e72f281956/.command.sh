#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR5810718' | tail -n +2)
if [[ $READ_RUN == *SRR5810718* ]]; then
     printf "SRR5810718"
else
     printf "not_found"
fi
