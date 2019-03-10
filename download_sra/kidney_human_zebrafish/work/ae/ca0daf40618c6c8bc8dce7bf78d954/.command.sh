#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2965074' | tail -n +2)
if [[ $READ_RUN == *SRR2965074* ]]; then
     printf "SRR2965074"
else
     printf "not_found"
fi
