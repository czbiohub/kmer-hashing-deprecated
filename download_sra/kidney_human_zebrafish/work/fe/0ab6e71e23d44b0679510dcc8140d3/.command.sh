#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR4051055' | tail -n +2)
if [[ $READ_RUN == *SRR4051055* ]]; then
     printf "SRR4051055"
else
     printf "not_found"
fi
