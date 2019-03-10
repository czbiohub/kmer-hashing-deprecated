#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2963407' | tail -n +2)
if [[ $READ_RUN == *SRR2963407* ]]; then
     printf "SRR2963407"
else
     printf "not_found"
fi
