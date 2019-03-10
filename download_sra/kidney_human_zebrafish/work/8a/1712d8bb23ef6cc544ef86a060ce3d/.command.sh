#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR4052929' | tail -n +2)
if [[ $READ_RUN == *SRR4052929* ]]; then
     printf "SRR4052929"
else
     printf "not_found"
fi
