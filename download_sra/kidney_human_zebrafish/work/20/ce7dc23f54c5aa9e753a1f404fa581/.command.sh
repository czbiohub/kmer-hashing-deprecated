#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR4050451' | tail -n +2)
if [[ $READ_RUN == *SRR4050451* ]]; then
     printf "SRR4050451"
else
     printf "not_found"
fi
