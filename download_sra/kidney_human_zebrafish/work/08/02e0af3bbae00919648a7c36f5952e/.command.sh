#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2963664' | tail -n +2)
if [[ $READ_RUN == *SRR2963664* ]]; then
     printf "SRR2963664"
else
     printf "not_found"
fi
