#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR4052968' | tail -n +2)
if [[ $READ_RUN == *SRR4052968* ]]; then
     printf "SRR4052968"
else
     printf "not_found"
fi
