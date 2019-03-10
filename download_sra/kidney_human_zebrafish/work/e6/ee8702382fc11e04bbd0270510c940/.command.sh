#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR4050687' | tail -n +2)
if [[ $READ_RUN == *SRR4050687* ]]; then
     printf "SRR4050687"
else
     printf "not_found"
fi
