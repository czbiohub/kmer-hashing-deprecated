#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2964001' | tail -n +2)
if [[ $READ_RUN == *SRR2964001* ]]; then
     printf "SRR2964001"
else
     printf "not_found"
fi
