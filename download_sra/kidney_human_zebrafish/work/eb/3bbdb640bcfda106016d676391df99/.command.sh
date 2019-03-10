#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2963802' | tail -n +2)
if [[ $READ_RUN == *SRR2963802* ]]; then
     printf "SRR2963802"
else
     printf "not_found"
fi
