#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR4053171' | tail -n +2)
if [[ $READ_RUN == *SRR4053171* ]]; then
     printf "SRR4053171"
else
     printf "not_found"
fi
