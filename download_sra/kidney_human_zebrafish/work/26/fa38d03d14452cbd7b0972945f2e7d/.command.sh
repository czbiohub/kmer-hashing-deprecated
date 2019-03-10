#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR4051084' | tail -n +2)
if [[ $READ_RUN == *SRR4051084* ]]; then
     printf "SRR4051084"
else
     printf "not_found"
fi
