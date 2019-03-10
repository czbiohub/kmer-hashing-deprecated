#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR4053006' | tail -n +2)
if [[ $READ_RUN == *SRR4053006* ]]; then
     printf "SRR4053006"
else
     printf "not_found"
fi
