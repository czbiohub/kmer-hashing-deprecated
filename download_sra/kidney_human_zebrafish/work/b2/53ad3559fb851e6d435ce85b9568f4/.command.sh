#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR4050783' | tail -n +2)
if [[ $READ_RUN == *SRR4050783* ]]; then
     printf "SRR4050783"
else
     printf "not_found"
fi
