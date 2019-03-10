#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR4052803' | tail -n +2)
if [[ $READ_RUN == *SRR4052803* ]]; then
     printf "SRR4052803"
else
     printf "not_found"
fi
