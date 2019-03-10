#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR4051079' | tail -n +2)
if [[ $READ_RUN == *SRR4051079* ]]; then
     printf "SRR4051079"
else
     printf "not_found"
fi
