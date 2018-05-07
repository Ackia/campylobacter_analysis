#!/usr/bin/env nextflow

params.input = "data/"
params.output = 'data/trimmed'
params.cpu = '24'

reads_atropos_pe = Channel
    .fromFilePairs(params.input + '*_{R1,R2}.fastq.gz', size: 2, flat: true)

process trimming_pe {
        publishDir params.output, mode: 'copy'

        input:
            set val(id), file(read1), file(read2) from reads_atropos_pe
            file adapters

        output:
            set val(id), file("${id}_R1.fastq"), file("${id}_R2.fastq") into trimmed_reads_pe

        script:
            """
            mkdir trimmed
            atropos -a TGGAATTCTCGGGTGCCAAGG -B AATGATACGGCGACCACCGAGATCTACACTCTTTCCCTACACGACGCTCTTCCGATCT \
                -T params.cpu -m 50 --max-n 0 -q 20,20 -pe1 $read1 -pe2 $read2 \
                -o ${id}_R1.fastq -p ${id}_R2.fastq
            """
}

process fastqc {

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
