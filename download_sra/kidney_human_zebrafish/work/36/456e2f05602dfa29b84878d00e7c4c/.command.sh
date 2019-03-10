#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2965446' | tail -n +2)
if [[ $READ_RUN == *SRR2965446* ]]; then
     printf "SRR2965446"
else
     printf "not_found"
fi
