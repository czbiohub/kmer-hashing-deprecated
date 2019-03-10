#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR4053087' | tail -n +2)
if [[ $READ_RUN == *SRR4053087* ]]; then
     printf "SRR4053087"
else
     printf "not_found"
fi
