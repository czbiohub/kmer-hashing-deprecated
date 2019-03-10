#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2964961' | tail -n +2)
if [[ $READ_RUN == *SRR2964961* ]]; then
     printf "SRR2964961"
else
     printf "not_found"
fi
