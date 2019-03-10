#!/bin/bash
READ_RUN=$(wget -qO- 'http://www.ebi.ac.uk/ena/data/warehouse/filereport?accession=SRR2965204&result=read_run' | tail -n +2)
if [[ -z "$READ_RUN" ]]; then
     printf "not_found"
else
     printf "SRR2965204"
fi
