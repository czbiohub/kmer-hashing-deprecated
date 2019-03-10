#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2963067' | tail -n +2)
if [[ $READ_RUN == *SRR2963067* ]]; then
     printf "SRR2963067"
else
     printf "not_found"
fi
