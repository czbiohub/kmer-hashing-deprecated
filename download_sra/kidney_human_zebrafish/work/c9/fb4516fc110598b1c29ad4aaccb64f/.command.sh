#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2963592' | tail -n +2)
if [[ $READ_RUN == *SRR2963592* ]]; then
     printf "SRR2963592"
else
     printf "not_found"
fi
