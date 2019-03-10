#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR4050934' | tail -n +2)
if [[ $READ_RUN == *SRR4050934* ]]; then
     printf "SRR4050934"
else
     printf "not_found"
fi
