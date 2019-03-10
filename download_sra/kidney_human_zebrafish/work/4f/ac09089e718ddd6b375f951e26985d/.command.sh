#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2963429' | tail -n +2)
if [[ $READ_RUN == *SRR2963429* ]]; then
     printf "SRR2963429"
else
     printf "not_found"
fi
