#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR4053106' | tail -n +2)
if [[ $READ_RUN == *SRR4053106* ]]; then
     printf "SRR4053106"
else
     printf "not_found"
fi
