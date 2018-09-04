#!/usr/bin/env nextflow
/*
 * pipeline input parameters
 */
params.reads = ""
params.outdir = ""
params.cpus = "12"
params.mem = "2"

/* Commti to test GIT*/

reads_atropos_pe = Channel
                      .fromFilePairs(params.reads + '*{1,2}.fastq.gz', size: 2, flat: true)
process trimming_pe {
                          publishDir params.outdir, mode: 'copy'

                          input:
                              set val(id), file(read1), file(read2) from reads_atropos_pe

                          output:
                              set val(id), file("${id}_R1_trimmed.fastq"), file("${id}_R2_trimmed.fastq") into trimmed_reads_pe

                          script:
                              """
                              atropos -a TGGAATTCTCGGGTGCCAAGG -B AATGATACGGCGACCACCGAGATCTACACTCTTTCCCTACACGACGCTCTTCCGATCT \
                                  -T $params.cpus -m 50 --max-n 0 -q 20,20 -pe1 $read1 -pe2 $read2 \
                                  -o ${id}_R1_trimmed.fastq -p ${id}_R2_trimmed.fastq
                              """
                      }
trimmed_reads_pe.into {reads_for_fastq; reads_for_megahit; reads_for_mlst}

process fastqc {
                                                publishDir params.outdir, mode: 'copy'

                                                input:
                                                    file reads from reads_for_fastq.collect()

                                                output:
                                                    file "*_fastqc.{zip,html}" into fastqc_results

                                                script:
                                                    """
                                                    fastqc $reads
                                                    """
                                            }

process multiqc {
                                                publishDir params.outdir, mode: 'copy'

                                                input:
                                                    file 'fastqc/*' from fastqc_results.collect()

                                                output:
                                                    file 'multiqc_report.html'

                                                script:
                                                    """
                                                    multiqc .
                                                    """
                      }
process megahit {
                                                  publishDir params.outdir, mode: 'copy'

                                                  input:
                                                      set val(id), file(read1), file(read2) from reads_for_megahit

                                                  output:
                                                      file("${id}_megahit/${id}.contigs.fa") into megahit_result

                                                  script:
                                                      """
                                                      megahit  -t $params.cpus -o ${id}_megahit --out-prefix ${id} -1 $read1 -2 $read2
                                                      """
                      }
/*process mlst {
                                                publishDir params.outdir, mode: 'copy'

                                                input:
                                                    file 'assembly' from megahit_result
                                                    set val(id), file(read1), file(read2) from reads_for_mlst

                                                output:
                                                    file ("${id}_mlst_report.tsv") into mlst_result

                                                script:
                                                    """
                                                    mlst
                                                    """
                      }
process results {
                                                publishDir params.outdir, mode: 'copy'

                                                input:
                                                file 'mlst_result' from mlst_result

                                                outputfile: "value"
}
