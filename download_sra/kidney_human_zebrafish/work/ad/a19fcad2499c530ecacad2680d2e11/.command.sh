#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2964197' | tail -n +2)
if [[ $READ_RUN == *SRR2964197* ]]; then
     printf "SRR2964197"
else
     printf "not_found"
fi
