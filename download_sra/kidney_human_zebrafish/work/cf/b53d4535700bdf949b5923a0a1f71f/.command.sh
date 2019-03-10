#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2963970' | tail -n +2)
if [[ $READ_RUN == *SRR2963970* ]]; then
     printf "SRR2963970"
else
     printf "not_found"
fi
