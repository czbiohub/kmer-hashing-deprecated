#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2963428' | tail -n +2)
if [[ $READ_RUN == *SRR2963428* ]]; then
     printf "SRR2963428"
else
     printf "not_found"
fi
