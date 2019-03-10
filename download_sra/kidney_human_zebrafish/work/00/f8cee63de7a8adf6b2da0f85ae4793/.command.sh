#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2964568' | tail -n +2)
if [[ $READ_RUN == *SRR2964568* ]]; then
     printf "SRR2964568"
else
     printf "not_found"
fi
