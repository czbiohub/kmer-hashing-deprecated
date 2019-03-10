#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2965244' | tail -n +2)
if [[ $READ_RUN == *SRR2965244* ]]; then
     printf "SRR2965244"
else
     printf "not_found"
fi
