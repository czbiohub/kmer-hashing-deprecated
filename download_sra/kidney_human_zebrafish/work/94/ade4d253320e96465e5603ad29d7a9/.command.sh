#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2962999' | tail -n +2)
if [[ $READ_RUN == *SRR2962999* ]]; then
     printf "SRR2962999"
else
     printf "not_found"
fi
