#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR4051025' | tail -n +2)
if [[ $READ_RUN == *SRR4051025* ]]; then
     printf "SRR4051025"
else
     printf "not_found"
fi
