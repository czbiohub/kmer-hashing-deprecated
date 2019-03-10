#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2963894' | tail -n +2)
if [[ $READ_RUN == *SRR2963894* ]]; then
     printf "SRR2963894"
else
     printf "not_found"
fi
