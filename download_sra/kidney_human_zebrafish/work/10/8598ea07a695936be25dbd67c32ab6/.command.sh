#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2963760' | tail -n +2)
if [[ $READ_RUN == *SRR2963760* ]]; then
     printf "SRR2963760"
else
     printf "not_found"
fi
