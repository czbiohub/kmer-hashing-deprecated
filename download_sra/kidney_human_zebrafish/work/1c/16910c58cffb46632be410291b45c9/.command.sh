#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2963388' | tail -n +2)
if [[ $READ_RUN == *SRR2963388* ]]; then
     printf "SRR2963388"
else
     printf "not_found"
fi
