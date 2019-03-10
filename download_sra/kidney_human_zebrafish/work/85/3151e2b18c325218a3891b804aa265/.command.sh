#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR4051078' | tail -n +2)
if [[ $READ_RUN == *SRR4051078* ]]; then
     printf "SRR4051078"
else
     printf "not_found"
fi
