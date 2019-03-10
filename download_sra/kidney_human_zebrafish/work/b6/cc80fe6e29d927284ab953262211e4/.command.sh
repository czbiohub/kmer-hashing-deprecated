#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2963152' | tail -n +2)
if [[ $READ_RUN == *SRR2963152* ]]; then
     printf "SRR2963152"
else
     printf "not_found"
fi
