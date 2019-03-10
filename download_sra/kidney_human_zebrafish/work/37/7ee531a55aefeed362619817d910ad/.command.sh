#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2964808' | tail -n +2)
if [[ $READ_RUN == *SRR2964808* ]]; then
     printf "SRR2964808"
else
     printf "not_found"
fi
