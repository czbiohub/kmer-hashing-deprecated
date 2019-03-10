#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR4051119' | tail -n +2)
if [[ $READ_RUN == *SRR4051119* ]]; then
     printf "SRR4051119"
else
     printf "not_found"
fi
