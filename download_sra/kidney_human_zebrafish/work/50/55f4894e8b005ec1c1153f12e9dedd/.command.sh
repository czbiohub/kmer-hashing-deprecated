#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR4053001' | tail -n +2)
if [[ $READ_RUN == *SRR4053001* ]]; then
     printf "SRR4053001"
else
     printf "not_found"
fi
