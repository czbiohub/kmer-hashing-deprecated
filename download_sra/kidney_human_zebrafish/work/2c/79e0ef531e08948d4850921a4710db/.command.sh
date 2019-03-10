#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2965349' | tail -n +2)
if [[ $READ_RUN == *SRR2965349* ]]; then
     printf "SRR2965349"
else
     printf "not_found"
fi
