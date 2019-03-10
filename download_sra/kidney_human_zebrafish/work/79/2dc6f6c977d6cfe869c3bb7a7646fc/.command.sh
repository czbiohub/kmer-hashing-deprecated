#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR4053109' | tail -n +2)
if [[ $READ_RUN == *SRR4053109* ]]; then
     printf "SRR4053109"
else
     printf "not_found"
fi
