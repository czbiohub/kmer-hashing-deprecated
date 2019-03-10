#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR4051008' | tail -n +2)
if [[ $READ_RUN == *SRR4051008* ]]; then
     printf "SRR4051008"
else
     printf "not_found"
fi
