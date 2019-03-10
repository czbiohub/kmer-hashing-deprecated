#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR4052998' | tail -n +2)
if [[ $READ_RUN == *SRR4052998* ]]; then
     printf "SRR4052998"
else
     printf "not_found"
fi
