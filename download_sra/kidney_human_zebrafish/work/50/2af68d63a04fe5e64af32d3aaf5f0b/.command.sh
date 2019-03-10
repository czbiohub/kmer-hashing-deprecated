#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR4053027' | tail -n +2)
if [[ $READ_RUN == *SRR4053027* ]]; then
     printf "SRR4053027"
else
     printf "not_found"
fi
