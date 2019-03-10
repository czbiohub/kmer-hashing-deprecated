#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR4053197' | tail -n +2)
if [[ $READ_RUN == *SRR4053197* ]]; then
     printf "SRR4053197"
else
     printf "not_found"
fi
