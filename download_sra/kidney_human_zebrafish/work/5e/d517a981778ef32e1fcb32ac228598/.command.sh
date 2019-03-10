#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR4053075' | tail -n +2)
if [[ $READ_RUN == *SRR4053075* ]]; then
     printf "SRR4053075"
else
     printf "not_found"
fi
