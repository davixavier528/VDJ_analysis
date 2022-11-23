O programa realiza (i) conversões de arquivos ab1 para fasta, (ii) análises com a ferramenta IgBLASTn  e (iii) formata
outputs em  uma tabela do excel contendo informações do tipo de cadeia, produtividade, sequência CDR (e seu tamanmho),
quantidade de mutações e os genes V, D e J com maior identidade encontrados no banco de dados IMGT.

Apresenta a seguinte estruturação:

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

Para configurar corretamente, siga os seguintes passos:

1. Requisitos:

    O programa só foi testado e habilitado para distribuições Linux
    
    Alguns scripts foram escritos na linguagem Python, é necessário que você possua Python no seu computador

    Adicionalmente, alguns passos precisam de dependências (biopython, pandas e openpyxl), que podem ser facilmente
    instaladas da seguinte forma:
    
    No diretório "VDJ_analysis", abra a linha de comando e execute o seguinte:

    pip install -r requirements.txt

2. Dar permissão de execução para o arquivo "Makefile"

    No diretório "VDJ_analysis", abra a linha de comando e execute o seguinte:

    chmod u+x "Makefile"

3. Dar permissão de execução para o restante dos scripts

    No diretório "VDJ_analysis", abra a linha de comando e execute o seguinte:

    make config
    
4. Para iniciar suas análises, coloque os arquivos ab1 no diretório data/input/ab1/

5. Converter arquivos ab1 para fasta

    No diretório "VDJ_analysis", abra a linha de comando e execute o seguinte:

    make format_input

6. Realizar as análises do IgBLASTn

    No diretório "VDJ_analysis", abra a linha de comando e execute o seguinte:

    make analysis

7. Formatar o output para auxiliar na visualização
	
    No diretório "VDJ_analysis", abra a linha de comando e execute o seguinte:

    make format_output
