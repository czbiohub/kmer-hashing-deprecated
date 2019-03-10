#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2965359' | tail -n +2)
if [[ $READ_RUN == *SRR2965359* ]]; then
     printf "SRR2965359"
else
     printf "not_found"
fi
