#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR4052958' | tail -n +2)
if [[ $READ_RUN == *SRR4052958* ]]; then
     printf "SRR4052958"
else
     printf "not_found"
fi
