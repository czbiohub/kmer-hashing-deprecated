#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2965377' | tail -n +2)
if [[ $READ_RUN == *SRR2965377* ]]; then
     printf "SRR2965377"
else
     printf "not_found"
fi
