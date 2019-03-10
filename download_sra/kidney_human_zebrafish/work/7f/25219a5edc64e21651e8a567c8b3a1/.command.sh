#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2965387' | tail -n +2)
if [[ $READ_RUN == *SRR2965387* ]]; then
     printf "SRR2965387"
else
     printf "not_found"
fi
