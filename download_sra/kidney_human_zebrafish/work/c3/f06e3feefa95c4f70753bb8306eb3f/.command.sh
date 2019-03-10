#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2963888' | tail -n +2)
if [[ $READ_RUN == *SRR2963888* ]]; then
     printf "SRR2963888"
else
     printf "not_found"
fi
