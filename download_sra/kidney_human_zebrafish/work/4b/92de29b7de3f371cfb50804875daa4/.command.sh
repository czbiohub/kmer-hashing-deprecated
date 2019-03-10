#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2963075' | tail -n +2)
if [[ $READ_RUN == *SRR2963075* ]]; then
     printf "SRR2963075"
else
     printf "not_found"
fi
