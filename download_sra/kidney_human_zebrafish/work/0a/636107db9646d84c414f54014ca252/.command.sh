#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2965305' | tail -n +2)
if [[ $READ_RUN == *SRR2965305* ]]; then
     printf "SRR2965305"
else
     printf "not_found"
fi
