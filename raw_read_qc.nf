#!/usr/bin/env nextflow

params.input = "data/"
params.output = 'data/trimmed'
params.adapters = 'data/adapters.fasta'

adapters = file(params.adapters)

process modules {

    """
    #!/usr/bin/bash

    print 'Hi there!' . '\n';
    """

}

reads_atropos_pe = Channel
    .fromFilePairs(params.input + '*_{R1,R2}.fastq.gz', size: 2, flat: true)

    process trimming_pe {
    """
    atropos
    """
    }

    process fastqc {
        container 'hadrieng/fastqc'

        input:
            file reads from trimmed_reads_se.concat(trimmed_reads_pe).collect()

        output:
            file "*_fastqc.{zip,html}" into fastqc_results

        script:
            """
            fastqc -t 4 $reads
            """
    }

    process multiqc {
        container 'ewels/multiqc'
        publishDir 'results', mode: 'copy'

        input:
            file 'fastqc/*' from fastqc_results.collect()

        output:
            file 'multiqc_report.html'

        script:
            """
            multiqc .
            """
    }
