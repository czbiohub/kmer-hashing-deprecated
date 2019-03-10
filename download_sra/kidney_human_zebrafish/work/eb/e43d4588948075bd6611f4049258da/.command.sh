#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2964782' | tail -n +2)
if [[ $READ_RUN == *SRR2964782* ]]; then
     printf "SRR2964782"
else
     printf "not_found"
fi
