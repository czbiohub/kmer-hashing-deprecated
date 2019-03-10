#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2963003' | tail -n +2)
if [[ $READ_RUN == *SRR2963003* ]]; then
     printf "SRR2963003"
else
     printf "not_found"
fi
