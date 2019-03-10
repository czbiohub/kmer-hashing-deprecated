#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR4053167' | tail -n +2)
if [[ $READ_RUN == *SRR4053167* ]]; then
     printf "SRR4053167"
else
     printf "not_found"
fi
