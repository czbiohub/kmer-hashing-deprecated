#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2964170' | tail -n +2)
if [[ $READ_RUN == *SRR2964170* ]]; then
     printf "SRR2964170"
else
     printf "not_found"
fi
