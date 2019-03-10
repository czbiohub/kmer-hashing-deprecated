#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2963934' | tail -n +2)
if [[ $READ_RUN == *SRR2963934* ]]; then
     printf "SRR2963934"
else
     printf "not_found"
fi
