#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR4051108' | tail -n +2)
if [[ $READ_RUN == *SRR4051108* ]]; then
     printf "SRR4051108"
else
     printf "not_found"
fi
