#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR4051071' | tail -n +2)
if [[ $READ_RUN == *SRR4051071* ]]; then
     printf "SRR4051071"
else
     printf "not_found"
fi
