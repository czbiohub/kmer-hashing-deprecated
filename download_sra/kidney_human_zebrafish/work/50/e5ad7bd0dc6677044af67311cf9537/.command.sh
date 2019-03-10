#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2965136' | tail -n +2)
if [[ $READ_RUN == *SRR2965136* ]]; then
     printf "SRR2965136"
else
     printf "not_found"
fi
