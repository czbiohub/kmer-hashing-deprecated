#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2964797' | tail -n +2)
if [[ $READ_RUN == *SRR2964797* ]]; then
     printf "SRR2964797"
else
     printf "not_found"
fi
