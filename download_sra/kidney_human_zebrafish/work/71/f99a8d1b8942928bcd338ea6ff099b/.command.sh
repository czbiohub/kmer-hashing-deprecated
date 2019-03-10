#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR4051106' | tail -n +2)
if [[ $READ_RUN == *SRR4051106* ]]; then
     printf "SRR4051106"
else
     printf "not_found"
fi
