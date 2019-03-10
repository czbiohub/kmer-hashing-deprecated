#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2965157' | tail -n +2)
if [[ $READ_RUN == *SRR2965157* ]]; then
     printf "SRR2965157"
else
     printf "not_found"
fi
