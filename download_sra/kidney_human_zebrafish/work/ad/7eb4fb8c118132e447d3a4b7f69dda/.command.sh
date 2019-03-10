#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR5810931' | tail -n +2)
if [[ $READ_RUN == *SRR5810931* ]]; then
     printf "SRR5810931"
else
     printf "not_found"
fi
