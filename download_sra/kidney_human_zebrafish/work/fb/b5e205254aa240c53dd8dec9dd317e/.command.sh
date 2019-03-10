#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR4050814' | tail -n +2)
if [[ $READ_RUN == *SRR4050814* ]]; then
     printf "SRR4050814"
else
     printf "not_found"
fi
