#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR4052970' | tail -n +2)
if [[ $READ_RUN == *SRR4052970* ]]; then
     printf "SRR4052970"
else
     printf "not_found"
fi
