#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR5810869' | tail -n +2)
if [[ $READ_RUN == *SRR5810869* ]]; then
     printf "SRR5810869"
else
     printf "not_found"
fi
