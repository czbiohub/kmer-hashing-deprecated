#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR4052956' | tail -n +2)
if [[ $READ_RUN == *SRR4052956* ]]; then
     printf "SRR4052956"
else
     printf "not_found"
fi
