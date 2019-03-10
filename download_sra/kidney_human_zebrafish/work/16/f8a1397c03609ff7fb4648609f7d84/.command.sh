#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR4052941' | tail -n +2)
if [[ $READ_RUN == *SRR4052941* ]]; then
     printf "SRR4052941"
else
     printf "not_found"
fi
