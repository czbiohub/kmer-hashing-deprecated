#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2964467' | tail -n +2)
if [[ $READ_RUN == *SRR2964467* ]]; then
     printf "SRR2964467"
else
     printf "not_found"
fi
