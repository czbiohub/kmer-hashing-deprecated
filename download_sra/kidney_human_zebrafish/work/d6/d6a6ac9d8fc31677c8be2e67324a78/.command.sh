#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2963724' | tail -n +2)
if [[ $READ_RUN == *$ID* ]]; then
     printf "SRR2964328"
else
     printf "not_found"
fi
