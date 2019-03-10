#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR4053122' | tail -n +2)
if [[ $READ_RUN == *SRR4053122* ]]; then
     printf "SRR4053122"
else
     printf "not_found"
fi
