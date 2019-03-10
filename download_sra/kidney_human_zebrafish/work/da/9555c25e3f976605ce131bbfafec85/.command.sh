#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2965239' | tail -n +2)
if [[ $READ_RUN == *SRR2965239* ]]; then
     printf "SRR2965239"
else
     printf "not_found"
fi
