#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2964206' | tail -n +2)
if [[ $READ_RUN == *SRR2964206* ]]; then
     printf "SRR2964206"
else
     printf "not_found"
fi
