#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR4053036' | tail -n +2)
if [[ $READ_RUN == *SRR4053036* ]]; then
     printf "SRR4053036"
else
     printf "not_found"
fi
