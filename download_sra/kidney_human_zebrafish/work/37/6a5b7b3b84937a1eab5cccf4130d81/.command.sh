#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2965509' | tail -n +2)
if [[ $READ_RUN == *SRR2965509* ]]; then
     printf "SRR2965509"
else
     printf "not_found"
fi
