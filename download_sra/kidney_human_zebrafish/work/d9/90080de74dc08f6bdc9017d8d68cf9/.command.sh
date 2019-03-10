#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR4052949' | tail -n +2)
if [[ $READ_RUN == *SRR4052949* ]]; then
     printf "SRR4052949"
else
     printf "not_found"
fi
