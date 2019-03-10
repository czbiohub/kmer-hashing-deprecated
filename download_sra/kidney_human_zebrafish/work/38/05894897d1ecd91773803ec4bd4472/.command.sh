#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2963078' | tail -n +2)
if [[ $READ_RUN == *SRR2963078* ]]; then
     printf "SRR2963078"
else
     printf "not_found"
fi
