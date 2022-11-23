config:
	@bash scripts/permissions.sh
	
format_input:
	@bash scripts/convert_ab1_to_fasta.sh
	
analysis:
	@bash scripts/igblastn_analysis.sh
	
format_output:
	@python3 scripts/processing_igblastn.py