#!/bin/bash
READ_RUN=$(wget -qO- 'https://www.ncbi.nlm.nih.gov/sra/?term=SRR5810765' | tail -n +2)
if [[ $READ_RUN == *SRR5810765* ]]; then
     printf "SRR5810765"
else
     printf "not_found"
fi
