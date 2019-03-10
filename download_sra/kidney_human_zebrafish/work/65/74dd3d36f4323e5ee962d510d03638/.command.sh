#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2963571' | tail -n +2)
if [[ $READ_RUN == *SRR2963571* ]]; then
     printf "SRR2963571"
else
     printf "not_found"
fi
