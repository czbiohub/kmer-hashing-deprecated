#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR5810883' | tail -n +2)
if [[ $READ_RUN == *SRR5810883* ]]; then
     printf "SRR5810883"
else
     printf "not_found"
fi
