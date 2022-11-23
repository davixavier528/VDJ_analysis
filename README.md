# Anotação de segmentos VDJ
* O programa realiza (i) conversões de arquivos ab1 para fasta, (ii) análises com a ferramenta IgBLASTn  e (iii) formata
outputs em  uma tabela do excel contendo informações do tipo de cadeia, produtividade, sequência CDR (e seu tamanmho),
quantidade de mutações e os genes V, D e J com maior identidade encontrados no banco de dados IMGT.
---

# Apresenta a seguinte estruturação:

```bash
VDJ_analysis/
├── data/
│   ├── input/
│   │   ├── ab1/
│   │   └── fasta/
│   └── output/
├── Makefile
├── README.md
└── scripts/
    ├── convert_ab1_to_fasta.py
    ├── igblastn_analysis.sh
    ├── mv_fasta.sh
    ├── ncbi-igblast-1.20.0/
    │   ├── bin/
    │   ├── ChangeLog
    │   ├── database/
    │   ├── internal_data/
    │   ├── LICENSE
    │   └── optional_file/
    ├── permissions.sh
    └── processing_igblastn.sh
```

# Requisitos
* Linux
* Python 3.7.X
* Dependências: biopython, pandas e openpyxl
* Para instalar as dependências, va até o diretório "VDJ_analysis" e execute o seguinte:
* `pip install -r requirements.txt`

# Utilização
## Linux

1. Descompactar os arquivos

	No diretório "VDJ_analysis", abra a linha de comando e execute o seguinte:
	`unzip '*.zip'`

2. Dar permissão de execução para o arquivo "Makefile"

	No diretório "VDJ_analysis", abra a linha de comando e execute o seguinte:
	`chmod u+x 'Makefile'`

3. Dar permissão de execução para o restante dos scripts

	No diretório "VDJ_analysis", abra a linha de comando e execute o seguinte:
	`make config`
    
4. Para iniciar suas análises, coloque seus arquivos ab1 no diretório: `data/input/ab1/`

5. Converter arquivos ab1 para fasta

	No diretório "VDJ_analysis", abra a linha de comando e execute o seguinte:
	`make format_input`

6. Realizar as análises do IgBLASTn

	No diretório "VDJ_analysis", abra a linha de comando e execute o seguinte:
	`make analysis`

7. Formatar o output para auxiliar na visualização

	No diretório "VDJ_analysis", abra a linha de comando e execute o seguinte:
	`make format_output`
