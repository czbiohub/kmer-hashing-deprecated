#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2965537' | tail -n +2)
if [[ $READ_RUN == *SRR2965537* ]]; then
     printf "SRR2965537"
else
     printf "not_found"
fi
