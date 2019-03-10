#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR4052768' | tail -n +2)
if [[ $READ_RUN == *SRR4052768* ]]; then
     printf "SRR4052768"
else
     printf "not_found"
fi
