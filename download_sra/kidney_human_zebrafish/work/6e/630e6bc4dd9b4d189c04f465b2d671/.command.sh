#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR4051120' | tail -n +2)
if [[ $READ_RUN == *SRR4051120* ]]; then
     printf "SRR4051120"
else
     printf "not_found"
fi
