#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2963608' | tail -n +2)
if [[ $READ_RUN == *SRR2963608* ]]; then
     printf "SRR2963608"
else
     printf "not_found"
fi
