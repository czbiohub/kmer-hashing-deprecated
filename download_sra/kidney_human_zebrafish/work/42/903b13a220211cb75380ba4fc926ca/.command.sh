#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2964766' | tail -n +2)
if [[ $READ_RUN == *SRR2964766* ]]; then
     printf "SRR2964766"
else
     printf "not_found"
fi
