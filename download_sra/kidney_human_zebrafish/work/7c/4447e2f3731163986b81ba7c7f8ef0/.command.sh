#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR4052863' | tail -n +2)
if [[ $READ_RUN == *SRR4052863* ]]; then
     printf "SRR4052863"
else
     printf "not_found"
fi
