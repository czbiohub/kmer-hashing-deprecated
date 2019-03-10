#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2963320' | tail -n +2)
if [[ $READ_RUN == *SRR2963320* ]]; then
     printf "SRR2963320"
else
     printf "not_found"
fi
