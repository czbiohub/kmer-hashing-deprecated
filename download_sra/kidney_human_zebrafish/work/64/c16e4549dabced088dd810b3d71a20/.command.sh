#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2963425' | tail -n +2)
if [[ $READ_RUN == *SRR2963425* ]]; then
     printf "SRR2963425"
else
     printf "not_found"
fi
