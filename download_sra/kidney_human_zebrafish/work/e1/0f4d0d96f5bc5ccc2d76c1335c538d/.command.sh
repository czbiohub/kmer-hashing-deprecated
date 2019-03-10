#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2964257' | tail -n +2)
if [[ $READ_RUN == *SRR2964257* ]]; then
     printf "SRR2964257"
else
     printf "not_found"
fi
