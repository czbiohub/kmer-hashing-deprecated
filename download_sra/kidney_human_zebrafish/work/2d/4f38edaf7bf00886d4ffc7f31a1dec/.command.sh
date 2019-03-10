#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2963827' | tail -n +2)
if [[ $READ_RUN == *SRR2963827* ]]; then
     printf "SRR2963827"
else
     printf "not_found"
fi
