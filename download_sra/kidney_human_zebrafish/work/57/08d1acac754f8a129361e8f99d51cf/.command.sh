#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2964361' | tail -n +2)
if [[ $READ_RUN == *SRR2964361* ]]; then
     printf "SRR2964361"
else
     printf "not_found"
fi
