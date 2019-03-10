#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR4050462' | tail -n +2)
if [[ $READ_RUN == *SRR4050462* ]]; then
     printf "SRR4050462"
else
     printf "not_found"
fi
