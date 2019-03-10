#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2965409' | tail -n +2)
if [[ $READ_RUN == *SRR2965409* ]]; then
     printf "SRR2965409"
else
     printf "not_found"
fi
