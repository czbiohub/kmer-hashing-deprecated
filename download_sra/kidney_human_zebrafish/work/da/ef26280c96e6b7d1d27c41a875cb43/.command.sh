#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2963607' | tail -n +2)
if [[ $READ_RUN == *SRR2963607* ]]; then
     printf "SRR2963607"
else
     printf "not_found"
fi
