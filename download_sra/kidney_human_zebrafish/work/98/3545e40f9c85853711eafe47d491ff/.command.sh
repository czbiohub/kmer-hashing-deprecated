#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2965478' | tail -n +2)
if [[ $READ_RUN == *SRR2965478* ]]; then
     printf "SRR2965478"
else
     printf "not_found"
fi
