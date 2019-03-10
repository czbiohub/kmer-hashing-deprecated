#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR5810858' | tail -n +2)
if [[ $READ_RUN == *SRR5810858* ]]; then
     printf "SRR5810858"
else
     printf "not_found"
fi
