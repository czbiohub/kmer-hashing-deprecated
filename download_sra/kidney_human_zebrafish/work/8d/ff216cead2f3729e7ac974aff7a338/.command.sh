#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR4050512' | tail -n +2)
if [[ $READ_RUN == *SRR4050512* ]]; then
     printf "SRR4050512"
else
     printf "not_found"
fi
