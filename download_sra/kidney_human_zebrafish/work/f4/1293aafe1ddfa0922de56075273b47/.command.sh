#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2965001' | tail -n +2)
if [[ $READ_RUN == *SRR2965001* ]]; then
     printf "SRR2965001"
else
     printf "not_found"
fi
