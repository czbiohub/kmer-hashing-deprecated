#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR4051032' | tail -n +2)
if [[ $READ_RUN == *SRR4051032* ]]; then
     printf "SRR4051032"
else
     printf "not_found"
fi
