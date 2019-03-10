#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2963282' | tail -n +2)
if [[ $READ_RUN == *SRR2963282* ]]; then
     printf "SRR2963282"
else
     printf "not_found"
fi
