#!/usr/bin/env nextflow

/*
 * Generate BAM index file
 */
process SAMTOOLS_INDEX {

    container 'community.wave.seqera.io/library/samtools:1.20--b5dfbd93de237464'

    input:
    path bamfile

    output:
    tuple path(bamfile), path("${bamfile}.bai")

    script:
    """
    samtools index '${bamfile}'
    """
}
