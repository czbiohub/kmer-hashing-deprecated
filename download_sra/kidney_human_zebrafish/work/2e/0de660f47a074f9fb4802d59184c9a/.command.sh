#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR4050969' | tail -n +2)
if [[ $READ_RUN == *SRR4050969* ]]; then
     printf "SRR4050969"
else
     printf "not_found"
fi
