#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2965420' | tail -n +2)
if [[ $READ_RUN == *SRR2965420* ]]; then
     printf "SRR2965420"
else
     printf "not_found"
fi
