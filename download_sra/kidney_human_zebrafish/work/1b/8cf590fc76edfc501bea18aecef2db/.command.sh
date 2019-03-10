#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR4050841' | tail -n +2)
if [[ $READ_RUN == *SRR4050841* ]]; then
     printf "SRR4050841"
else
     printf "not_found"
fi
