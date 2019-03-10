#!/bin/bash
READ_RUN=$(wget -qO- 'http://www.ebi.ac.uk/ena/data/warehouse/filereport?accession=SRR4052763&result=read_run' | tail -n +2)
if [[ -z "$READ_RUN" ]]; then
     printf "not_found"
else
     printf "SRR4052763"
fi
