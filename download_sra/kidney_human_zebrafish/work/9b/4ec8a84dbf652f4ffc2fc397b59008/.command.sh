#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR4050961' | tail -n +2)
if [[ $READ_RUN == *SRR4050961* ]]; then
     printf "SRR4050961"
else
     printf "not_found"
fi
