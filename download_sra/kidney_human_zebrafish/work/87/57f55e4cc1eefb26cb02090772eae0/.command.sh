#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2965406' | tail -n +2)
if [[ $READ_RUN == *SRR2965406* ]]; then
     printf "SRR2965406"
else
     printf "not_found"
fi
