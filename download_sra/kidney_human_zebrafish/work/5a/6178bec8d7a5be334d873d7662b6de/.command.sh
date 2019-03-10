#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR4052897' | tail -n +2)
if [[ $READ_RUN == *SRR4052897* ]]; then
     printf "SRR4052897"
else
     printf "not_found"
fi
