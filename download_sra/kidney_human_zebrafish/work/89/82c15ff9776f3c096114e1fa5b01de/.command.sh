#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR4052766' | tail -n +2)
if [[ $READ_RUN == *SRR4052766* ]]; then
     printf "SRR4052766"
else
     printf "not_found"
fi
