#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2963562' | tail -n +2)
if [[ $READ_RUN == *SRR2963562* ]]; then
     printf "SRR2963562"
else
     printf "not_found"
fi
