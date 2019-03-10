#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR4051068' | tail -n +2)
if [[ $READ_RUN == *SRR4051068* ]]; then
     printf "SRR4051068"
else
     printf "not_found"
fi
