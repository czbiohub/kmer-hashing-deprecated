#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR4050655' | tail -n +2)
if [[ $READ_RUN == *SRR4050655* ]]; then
     printf "SRR4050655"
else
     printf "not_found"
fi
