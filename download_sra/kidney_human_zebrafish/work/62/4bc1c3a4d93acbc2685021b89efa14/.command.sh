#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR4053034' | tail -n +2)
if [[ $READ_RUN == *SRR4053034* ]]; then
     printf "SRR4053034"
else
     printf "not_found"
fi
