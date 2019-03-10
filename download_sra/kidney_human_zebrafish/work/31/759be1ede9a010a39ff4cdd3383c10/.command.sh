#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR4051077' | tail -n +2)
if [[ $READ_RUN == *SRR4051077* ]]; then
     printf "SRR4051077"
else
     printf "not_found"
fi
