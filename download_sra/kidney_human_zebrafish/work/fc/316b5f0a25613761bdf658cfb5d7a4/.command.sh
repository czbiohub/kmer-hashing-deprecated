#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2964432' | tail -n +2)
if [[ $READ_RUN == *SRR2964432* ]]; then
     printf "SRR2964432"
else
     printf "not_found"
fi
