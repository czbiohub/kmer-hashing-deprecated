#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2964140' | tail -n +2)
if [[ $READ_RUN == *SRR2964140* ]]; then
     printf "SRR2964140"
else
     printf "not_found"
fi
