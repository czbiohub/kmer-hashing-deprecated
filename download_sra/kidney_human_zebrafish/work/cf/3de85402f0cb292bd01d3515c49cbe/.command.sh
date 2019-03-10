#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR5810797' | tail -n +2)
if [[ $READ_RUN == *SRR5810797* ]]; then
     printf "SRR5810797"
else
     printf "not_found"
fi
