#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2963392' | tail -n +2)
if [[ $READ_RUN == *SRR2963392* ]]; then
     printf "SRR2963392"
else
     printf "not_found"
fi
