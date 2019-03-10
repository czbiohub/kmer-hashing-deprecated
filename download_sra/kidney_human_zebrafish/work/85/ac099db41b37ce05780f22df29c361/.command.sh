#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2965120' | tail -n +2)
if [[ $READ_RUN == *SRR2965120* ]]; then
     printf "SRR2965120"
else
     printf "not_found"
fi
