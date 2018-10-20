test_k:
	reflow run how_manyk_to_find_genes.rf \
		-transcriptome_fasta=s3://olgabot-genomes/mm10/gencode/m17/gencode.vM17.transcripts.fa.gz \
		-transcriptome_name=gencode.vM17.transcripts \
		-cell_read1= \
		-cell_read2= \
		-cell_name='A1-D041914-3_8_M-1-1|tissue:Bladder|subtissue:NA|cell_ontology_class:bladder_cell|free_annotation:Bladder_mesenchymal_cell' \
		-scaled=1000 \
		-ksizes='3,6,9,12,15,18,21,24,27,30,33,36,39,42,45,48,51,54,57,60' \
		
test_index:
	reflow run sourmash_index.rf \
		-signatures=s3://olgabot-maca/facs/sourmash_dna-only_trim=true_scaled=1000_test_subset \
		-output=s3://olgabot-maca/facs/sourmash_index_test/ \
		-ksize=21 \
		-sequence_to_compare=dna \
		-database_name=scaled=1000_k21_dna 