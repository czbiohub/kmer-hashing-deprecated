#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR2965580' | tail -n +2)
if [[ $READ_RUN == *SRR2965580* ]]; then
     printf "SRR2965580"
else
     printf "not_found"
fi
