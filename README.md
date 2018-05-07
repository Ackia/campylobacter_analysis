# campylobacter_analysis
Scripts for analysis of Campylobacter from Illumina WGS sequencing

# Preliminary analysis of sequence data from Campylobacter sequencing

## Data QC --> Note done yet

## Preliminary assembly

Two assemblers were used, MegaHit and Spades, normal settings.

Reults in table:

| filename                                   | total_length | number | mean_length | longest | shortest | N_count | Gaps | N50   | N50n | N70   | N70n | N90   | N90n |
|--------------------------------------------|--------------|--------|-------------|---------|----------|---------|------|-------|------|-------|------|-------|------|
| ./14_R1.fastq.gz_assembly/final.contigs.fa | 1708663      | 231    | 7396.81     | 98810   | 301      | 0       | 0    | 56419 | 12   | 25187 | 22   | 10346 | 43   |
| ./15_R1.fastq.gz_assembly/final.contigs.fa | 1713706      | 316    | 5423.12     | 99608   | 301      | 0       | 0    | 24498 | 24   | 12878 | 44   | 4918  | 86   |
| ./16_R1.fastq.gz_assembly/final.contigs.fa | 1691932      | 195    | 8676.57     | 112798  | 302      | 0       | 0    | 34348 | 15   | 22489 | 26   | 9060  | 48   |
| ./17_R1.fastq.gz_assembly/final.contigs.fa | 1716578      | 264    | 6502.19     | 93764   | 300      | 0       | 0    | 41686 | 13   | 27385 | 24   | 7568  | 46   |
| ./18_R1.fastq.gz_assembly/final.contigs.fa | 1700063      | 299    | 5685.83     | 94984   | 300      | 0       | 0    | 55091 | 12   | 25172 | 22   | 7818  | 44   |
| ./19_R1.fastq.gz_assembly/final.contigs.fa | 1686084      | 155    | 10877.96    | 177970  | 300      | 0       | 0    | 57598 | 10   | 31167 | 17   | 14536 | 31   |
| ./20_R1.fastq.gz_assembly/final.contigs.fa | 1692312      | 227    | 7455.12     | 120466  | 300      | 0       | 0    | 29879 | 17   | 18625 | 31   | 6189  | 60   |
| ./21_R1.fastq.gz_assembly/final.contigs.fa | 1683770      | 217    | 7759.31     | 114509  | 300      | 0       | 0    | 25285 | 19   | 18333 | 34   | 5612  | 66   |
| ./22_R1.fastq.gz_assembly/final.contigs.fa | 1652679      | 191    | 8652.77     | 60321   | 301      | 0       | 0    | 17456 | 27   | 11429 | 50   | 5659  | 91   |
| ./23_R1.fastq.gz_assembly/final.contigs.fa | 1727721      | 365    | 4733.48     | 76130   | 300      | 0       | 0    | 18172 | 30   | 11628 | 53   | 4736  | 99   |
| ./24_R1.fastq.gz_assembly/final.contigs.fa | 1736641      | 329    | 5278.54     | 112542  | 300      | 0       | 0    | 29559 | 17   | 18368 | 32   | 6242  | 63   |
| ./25_R1.fastq.gz_assembly/final.contigs.fa | 1800064      | 344    | 5232.74     | 255824  | 300      | 0       | 0    | 79974 | 7    | 42947 | 13   | 10850 | 27   |
| ./26_R1.fastq.gz_assembly/final.contigs.fa | 1749549      | 253    | 6915.21     | 147533  | 300      | 0       | 0    | 43584 | 12   | 27019 | 23   | 10852 | 44   |
| ./27_R1.fastq.gz_assembly/final.contigs.fa | 1729111      | 202    | 8559.96     | 143640  | 300      | 0       | 0    | 39265 | 13   | 22265 | 25   | 10951 | 46   |
| ./28_R1.fastq.gz_assembly/final.contigs.fa | 1764683      | 423    | 4171.83     | 121410  | 300      | 0       | 0    | 32257 | 16   | 26341 | 28   | 6874  | 52   |
| ./29_R1.fastq.gz_assembly/final.contigs.fa | 1753168      | 232    | 7556.76     | 141734  | 300      | 0       | 0    | 55670 | 10   | 31094 | 18   | 13338 | 34   |
| ./30_R1.fastq.gz_assembly/final.contigs.fa | 1696790      | 266    | 6378.91     | 128932  | 202      | 0       | 0    | 39909 | 14   | 22856 | 25   | 8476  | 49   |
| ./31_R1.fastq.gz_assembly/final.contigs.fa | 1739073      | 271    | 6417.24     | 122948  | 300      | 0       | 0    | 24427 | 22   | 13549 | 42   | 5594  | 80   |
| ./32_R1.fastq.gz_assembly/final.contigs.fa | 1796397      | 349    | 5147.27     | 103193  | 300      | 0       | 0    | 43656 | 14   | 30599 | 24   | 8086  | 43   |
| ./33_R1.fastq.gz_assembly/final.contigs.fa | 1762604      | 323    | 5456.98     | 88356   | 300      | 0       | 0    | 26364 | 21   | 16428 | 38   | 5291  | 73   |
| ./34_R1.fastq.gz_assembly/final.contigs.fa | 1768473      | 274    | 6454.28     | 121045  | 300      | 0       | 0    | 57913 | 12   | 34500 | 19   | 11659 | 36   |
| ./35_R1.fastq.gz_assembly/final.contigs.fa | 1847719      | 486    | 3801.89     | 147810  | 300      | 0       | 0    | 55239 | 11   | 36225 | 19   | 3447  | 41   |
| ./36_R1.fastq.gz_assembly/final.contigs.fa | 1811700      | 382    | 4742.67     | 148290  | 212      | 0       | 0    | 57696 | 11   | 31026 | 20   | 10576 | 38   |
| ./37_R1.fastq.gz_assembly/final.contigs.fa | 1677025      | 203    | 8261.21     | 115110  | 223      | 0       | 0    | 44558 | 13   | 26105 | 23   | 8676  | 47   |
| ./38_R1.fastq.gz_assembly/final.contigs.fa | 1756986      | 335    | 5244.73     | 59678   | 300      | 0       | 0    | 18303 | 30   | 10481 | 53   | 4744  | 101  |
| ./39_R1.fastq.gz_assembly/final.contigs.fa | 1621088      | 194    | 8356.12     | 118958  | 300      | 0       | 0    | 20950 | 23   | 12827 | 42   | 5868  | 79   |
| ./40_R1.fastq.gz_assembly/final.contigs.fa | 1612895      | 181    | 8911.02     | 69188   | 300      | 0       | 0    | 20993 | 23   | 14214 | 42   | 5322  | 77   |
| ./41_R1.fastq.gz_assembly/final.contigs.fa | 1758981      | 271    | 6490.70     | 125565  | 301      | 0       | 0    | 39718 | 14   | 20398 | 27   | 5132  | 56   |
| ./42_R1.fastq.gz_assembly/final.contigs.fa | 1751062      | 403    | 4345.07     | 65689   | 300      | 0       | 0    | 13385 | 43   | 7528  | 77   | 2453  | 149  |
| ./43_R1.fastq.gz_assembly/final.contigs.fa | 1728852      | 230    | 7516.75     | 188078  | 300      | 0       | 0    | 78882 | 9    | 55099 | 14   | 20529 | 24   |
| ./44_R1.fastq.gz_assembly/final.contigs.fa | 1706084      | 220    | 7754.93     | 67505   | 300      | 0       | 0    | 30329 | 20   | 20858 | 33   | 7526  | 57   |
| ./45_R1.fastq.gz_assembly/final.contigs.fa | 1876999      | 314    | 5977.70     | 115455  | 298      | 0       | 0    | 37543 | 15   | 25405 | 27   | 3852  | 60   |
| ./46_R1.fastq.gz_assembly/final.contigs.fa | 1832567      | 335    | 5470.35     | 97933   | 300      | 0       | 0    | 20950 | 25   | 11663 | 48   | 3455  | 100  |
| ./47_R1.fastq.gz_assembly/final.contigs.fa | 1815704      | 282    | 6438.67     | 63041   | 300      | 0       | 0    | 24838 | 24   | 13602 | 43   | 4053  | 91   |
| ./48_R1.fastq.gz_assembly/final.contigs.fa | 1682804      | 233    | 7222.33     | 158788  | 300      | 0       | 0    | 52626 | 10   | 34962 | 17   | 15985 | 30   |
| ./49_R1.fastq.gz_assembly/final.contigs.fa | 1689404      | 293    | 5765.88     | 126711  | 300      | 0       | 0    | 33262 | 13   | 22979 | 24   | 6902  | 49   |
| ./50_R1.fastq.gz_assembly/final.contigs.fa | 1685143      | 265    | 6359.03     | 180989  | 300      | 0       | 0    | 37162 | 11   | 25050 | 22   | 11351 | 40   |
| ./51_R1.fastq.gz_assembly/final.contigs.fa | 1794675      | 395    | 4543.48     | 131146  | 300      | 0       | 0    | 43338 | 14   | 27571 | 24   | 5309  | 51   |
| ./52_R1.fastq.gz_assembly/final.contigs.fa | 1818775      | 219    | 8304.91     | 183393  | 300      | 0       | 0    | 52377 | 8    | 28167 | 17   | 7611  | 39   |
| ./53_R1.fastq.gz_assembly/final.contigs.fa | 1655843      | 202    | 8197.24     | 82153   | 301      | 0       | 0    | 24074 | 20   | 17259 | 36   | 7364  | 64   |
| ./54_R1.fastq.gz_assembly/final.contigs.fa | 1761802      | 489    | 3602.87     | 248334  | 300      | 0       | 0    | 38942 | 12   | 22527 | 24   | 1806  | 54   |
| ./55_R1.fastq.gz_assembly/final.contigs.fa | 1870510      | 418    | 4474.90     | 98960   | 302      | 0       | 0    | 25467 | 20   | 14924 | 39   | 2797  | 90   |
| ./56_R1.fastq.gz_assembly/final.contigs.fa | 1765586      | 314    | 5622.89     | 86281   | 300      | 0       | 0    | 44836 | 14   | 27999 | 24   | 9615  | 45   |
| ./57_R1.fastq.gz_assembly/final.contigs.fa | 1893052      | 419    | 4518.02     | 161473  | 300      | 0       | 0    | 59535 | 10   | 28496 | 20   | 6872  | 42   |
| ./58_R1.fastq.gz_assembly/final.contigs.fa | 1815416      | 342    | 5308.23     | 255975  | 261      | 0       | 0    | 53925 | 9    | 33871 | 17   | 10684 | 35   |
| ./59_R1.fastq.gz_assembly/final.contigs.fa | 1808026      | 366    | 4939.96     | 102890  | 300      | 0       | 0    | 30789 | 18   | 19879 | 33   | 4240  | 67   |
| ./60_R1.fastq.gz_assembly/final.contigs.fa | 1663982      | 205    | 8116.99     | 143112  | 300      | 0       | 0    | 37760 | 12   | 26884 | 22   | 8375  | 43   |
| ./61_R1.fastq.gz_assembly/final.contigs.fa | 1897382      | 540    | 3513.67     | 86904   | 289      | 0       | 0    | 29236 | 20   | 19524 | 35   | 1616  | 93   |
| ./62_R1.fastq.gz_assembly/final.contigs.fa | 1689361      | 248    | 6811.94     | 178368  | 201      | 0       | 0    | 85652 | 7    | 55992 | 12   | 12041 | 27   |
| ./63_R1.fastq.gz_assembly/final.contigs.fa | 1767880      | 474    | 3729.70     | 100136  | 300      | 0       | 0    | 41358 | 13   | 22911 | 24   | 3069  | 60   |
| ./64_R1.fastq.gz_assembly/final.contigs.fa | 1665181      | 207    | 8044.35     | 105893  | 228      | 0       | 0    | 43793 | 13   | 29019 | 22   | 11209 | 39   |
| ./65_R1.fastq.gz_assembly/final.contigs.fa | 1727339      | 358    | 4824.97     | 182129  | 204      | 0       | 0    | 57357 | 9    | 32157 | 17   | 7361  | 33   |
| ./66_R1.fastq.gz_assembly/final.contigs.fa | 1662914      | 209    | 7956.53     | 153784  | 300      | 0       | 0    | 34129 | 13   | 27471 | 23   | 11696 | 42   |
| ./67_R1.fastq.gz_assembly/final.contigs.fa | 1675924      | 253    | 6624.21     | 119558  | 300      | 0       | 0    | 36897 | 13   | 24506 | 24   | 9448  | 43   |
| ./68_R1.fastq.gz_assembly/final.contigs.fa | 1715237      | 347    | 4943.05     | 205869  | 207      | 0       | 0    | 42328 | 11   | 23310 | 22   | 6418  | 47   |
| ./69_R1.fastq.gz_assembly/final.contigs.fa | 1749173      | 418    | 4184.62     | 121393  | 248      | 0       | 0    | 48494 | 12   | 28100 | 22   | 12383 | 41   |
| ./70_R1.fastq.gz_assembly/final.contigs.fa | 1836206      | 245    | 7494.72     | 203688  | 300      | 0       | 0    | 74758 | 7    | 41025 | 14   | 6241  | 33   |
| ./71_R1.fastq.gz_assembly/final.contigs.fa | 1742331      | 437    | 3987.03     | 205193  | 206      | 0       | 0    | 51509 | 11   | 29414 | 20   | 4510  | 44   |
| ./72_R1.fastq.gz_assembly/final.contigs.fa | 1820496      | 267    | 6818.34     | 82151   | 207      | 0       | 0    | 37764 | 17   | 22084 | 31   | 7698  | 60   |
| ./73_R1.fastq.gz_assembly/final.contigs.fa | 1942495      | 502    | 3869.51     | 264792  | 207      | 0       | 0    | 67986 | 8    | 44675 | 15   | 2264  | 44   |
| ./74_R1.fastq.gz_assembly/final.contigs.fa | 1844476      | 430    | 4289.48     | 134520  | 300      | 0       | 0    | 52714 | 12   | 27304 | 22   | 7281  | 45   |
| ./75_R1.fastq.gz_assembly/final.contigs.fa | 1708530      | 176    | 9707.56     | 122962  | 300      | 0       | 0    | 42465 | 13   | 30414 | 22   | 12298 | 37   |
| ./76_R1.fastq.gz_assembly/final.contigs.fa | 1918140      | 691    | 2775.89     | 264109  | 300      | 0       | 0    | 45909 | 12   | 27414 | 22   | 429   | 151  |
| ./77_R1.fastq.gz_assembly/final.contigs.fa | 2024995      | 829    | 2442.70     | 219899  | 212      | 0       | 0    | 54157 | 10   | 26059 | 20   | 428   | 256  |
| ./78_R1.fastq.gz_assembly/final.contigs.fa | 1650178      | 156    | 10578.06    | 112347  | 300      | 0       | 0    | 40749 | 13   | 22122 | 24   | 9611  | 45   |
| ./79_R1.fastq.gz_assembly/final.contigs.fa | 1744312      | 286    | 6098.99     | 149372  | 302      | 0       | 0    | 45423 | 12   | 22382 | 23   | 6028  | 50   |
| ./80_R1.fastq.gz_assembly/final.contigs.fa | 1732534      | 459    | 3774.58     | 170848  | 300      | 0       | 0    | 67115 | 10   | 29949 | 18   | 3624  | 45   |
| ./81_R1.fastq.gz_assembly/final.contigs.fa | 1880109      | 738    | 2547.57     | 233957  | 300      | 0       | 0    | 78826 | 8    | 46947 | 14   | 410   | 198  |
| ./82_R1.fastq.gz_assembly/final.contigs.fa | 2209969      | 1134   | 1948.83     | 120954  | 218      | 0       | 0    | 27994 | 20   | 12649 | 42   | 389   | 488  |
| ./83_R1.fastq.gz_assembly/final.contigs.fa | 1678486      | 446    | 3763.42     | 172953  | 300      | 0       | 0    | 52471 | 10   | 32365 | 18   | 5943  | 39   |
| ./84_R1.fastq.gz_assembly/final.contigs.fa | 1694414      | 303    | 5592.13     | 178202  | 235      | 0       | 0    | 47023 | 11   | 30685 | 20   | 11411 | 36   |
| ./85_R1.fastq.gz_assembly/final.contigs.fa | 2010736      | 584    | 3443.04     | 160060  | 206      | 0       | 0    | 55550 | 12   | 33762 | 21   | 1189  | 87   |

## MLST detection

| Contig file                                | Matching PubMLST scheme | ST (sequence type) | Allele IDs |            |            |            |           |          |            |
|--------------------------------------------|-------------------------|--------------------|------------|------------|------------|------------|-----------|----------|------------|
| ./14_R1.fastq.gz_assembly/final.contigs.fa | campylobacter           | 257                | aspA(9)    | glnA(2)    | gltA(4)    | glyA(62)   | pgm(4)    | tkt(5)   | uncA(6)    |
| ./15_R1.fastq.gz_assembly/final.contigs.fa | campylobacter           | 257                | aspA(9)    | glnA(2)    | gltA(4)    | glyA(62)   | pgm(4)    | tkt(5)   | uncA(6)    |
| ./16_R1.fastq.gz_assembly/final.contigs.fa | campylobacter           | 257                | aspA(9)    | glnA(2)    | gltA(4)    | glyA(62)   | pgm(4)    | tkt(5)   | uncA(6)    |
| ./17_R1.fastq.gz_assembly/final.contigs.fa | campylobacter           | 257                | aspA(9)    | glnA(2)    | gltA(4)    | glyA(62)   | pgm(4)    | tkt(5)   | uncA(6)    |
| ./18_R1.fastq.gz_assembly/final.contigs.fa | campylobacter           | 45                 | aspA(4)    | glnA(7)    | gltA(10)   | glyA(4)    | pgm(1)    | tkt(7)   | uncA(1)    |
| ./19_R1.fastq.gz_assembly/final.contigs.fa | campylobacter           | 257                | aspA(9)    | glnA(2)    | gltA(4)    | glyA(62)   | pgm(4)    | tkt(5)   | uncA(6)    |
| ./20_R1.fastq.gz_assembly/final.contigs.fa | campylobacter           | 257                | aspA(9)    | glnA(2)    | gltA(4)    | glyA(62)   | pgm(4)    | tkt(5)   | uncA(6)    |
| ./21_R1.fastq.gz_assembly/final.contigs.fa | campylobacter           | 257                | aspA(9)    | glnA(2)    | gltA(4)    | glyA(62)   | pgm(4)    | tkt(5)   | uncA(6)    |
| ./22_R1.fastq.gz_assembly/final.contigs.fa | campylobacter           | 257                | aspA(9)    | glnA(2)    | gltA(4)    | glyA(62)   | pgm(4)    | tkt(5)   | uncA(6)    |
| ./23_R1.fastq.gz_assembly/final.contigs.fa | campylobacter           | 257                | aspA(9)    | glnA(2)    | gltA(4)    | glyA(62)   | pgm(4)    | tkt(5)   | uncA(6)    |
| ./24_R1.fastq.gz_assembly/final.contigs.fa | campylobacter           | 257                | aspA(9)    | glnA(2)    | gltA(4)    | glyA(62)   | pgm(4)    | tkt(5)   | uncA(6)    |
| ./25_R1.fastq.gz_assembly/final.contigs.fa | campylobacter           | 257                | aspA(9)    | glnA(2)    | gltA(4)    | glyA(62)   | pgm(4)    | tkt(5)   | uncA(6)    |
| ./26_R1.fastq.gz_assembly/final.contigs.fa | campylobacter           | 257                | aspA(9)    | glnA(2)    | gltA(4)    | glyA(62)   | pgm(4)    | tkt(5)   | uncA(6)    |
| ./27_R1.fastq.gz_assembly/final.contigs.fa | campylobacter           | 257                | aspA(9)    | glnA(2)    | gltA(4)    | glyA(62)   | pgm(4)    | tkt(5)   | uncA(6)    |
| ./28_R1.fastq.gz_assembly/final.contigs.fa | campylobacter           | 572                | aspA(62)   | glnA(4)    | gltA(5)    | glyA(2)    | pgm(2)    | tkt(1)   | uncA(5)    |
| ./29_R1.fastq.gz_assembly/final.contigs.fa | campylobacter           | 257                | aspA(9)    | glnA(2)    | gltA(4)    | glyA(62)   | pgm(4)    | tkt(5)   | uncA(6)    |
| ./30_R1.fastq.gz_assembly/final.contigs.fa | campylobacter           | 572                | aspA(62)   | glnA(4)    | gltA(5)    | glyA(2)    | pgm(2)    | tkt(1)   | uncA(5)    |
| ./31_R1.fastq.gz_assembly/final.contigs.fa | campylobacter           | 257                | aspA(9)    | glnA(2)    | gltA(4)    | glyA(62)   | pgm(4)    | tkt(5)   | uncA(6)    |
| ./32_R1.fastq.gz_assembly/final.contigs.fa | campylobacter           | 257                | aspA(9)    | glnA(2)    | gltA(4)    | glyA(62)   | pgm(4)    | tkt(5)   | uncA(6)    |
| ./33_R1.fastq.gz_assembly/final.contigs.fa | campylobacter           | 257                | aspA(9)    | glnA(2)    | gltA(4)    | glyA(62)   | pgm(4)    | tkt(5)   | uncA(6)    |
| ./34_R1.fastq.gz_assembly/final.contigs.fa | campylobacter           | 257                | aspA(9)    | glnA(2)    | gltA(4)    | glyA(62)   | pgm(4)    | tkt(5)   | uncA(6)    |
| ./35_R1.fastq.gz_assembly/final.contigs.fa | campylobacter           | 257                | aspA(9)    | glnA(2)    | gltA(4)    | glyA(62)   | pgm(4)    | tkt(5)   | uncA(6)    |
| ./36_R1.fastq.gz_assembly/final.contigs.fa | campylobacter           | 257                | aspA(9)    | glnA(2)    | gltA(4)    | glyA(62)   | pgm(4)    | tkt(5)   | uncA(6)    |
| ./37_R1.fastq.gz_assembly/final.contigs.fa | campylobacter           | 572                | aspA(62)   | glnA(4)    | gltA(5)    | glyA(2)    | pgm(2)    | tkt(1)   | uncA(5)    |
| ./38_R1.fastq.gz_assembly/final.contigs.fa | campylobacter           | 257                | aspA(9)    | glnA(2)    | gltA(4)    | glyA(62)   | pgm(4)    | tkt(5)   | uncA(6)    |
| ./39_R1.fastq.gz_assembly/final.contigs.fa | campylobacter           | 583                | aspA(4)    | glnA(7)    | gltA(10)   | glyA(4)    | pgm(42)   | tkt(51)  | uncA(1)    |
| ./40_R1.fastq.gz_assembly/final.contigs.fa | campylobacter           | 583                | aspA(4)    | glnA(7)    | gltA(10)   | glyA(4)    | pgm(42)   | tkt(51)  | uncA(1)    |
| ./41_R1.fastq.gz_assembly/final.contigs.fa | campylobacter           | 1397               | aspA(2)    | glnA(4)    | gltA(84)   | glyA(105)  | pgm(236)  | tkt(25)  | uncA(57)   |
| ./42_R1.fastq.gz_assembly/final.contigs.fa | campylobacter           | 1397               | aspA(2)    | glnA(4)    | gltA(84)   | glyA(105)  | pgm(236)  | tkt(25)  | uncA(57)   |
| ./43_R1.fastq.gz_assembly/final.contigs.fa | campylobacter           | 21                 | aspA(2)    | glnA(1)    | gltA(1)    | glyA(3)    | pgm(2)    | tkt(1)   | uncA(5)    |
| ./44_R1.fastq.gz_assembly/final.contigs.fa | campylobacter           | 21                 | aspA(2)    | glnA(1)    | gltA(1)    | glyA(3)    | pgm(2)    | tkt(1)   | uncA(5)    |
| ./45_R1.fastq.gz_assembly/final.contigs.fa | campylobacter           | -                  | aspA(18)   | glnA(22)   | gltA(77)   | glyA(230)  | pgm(134)  | tkt(101) | uncA(16)   |
| ./46_R1.fastq.gz_assembly/final.contigs.fa | campylobacter           | 4582               | aspA(18)   | glnA(22)   | gltA(77)   | glyA(109)  | pgm(122)  | tkt(86)  | uncA(16)   |
| ./47_R1.fastq.gz_assembly/final.contigs.fa | campylobacter           | 4582               | aspA(18)   | glnA(22)   | gltA(77)   | glyA(109)  | pgm(122)  | tkt(86)  | uncA(16)   |
| ./48_R1.fastq.gz_assembly/final.contigs.fa | campylobacter           | -                  | aspA(347?) | glnA(7)    | gltA(10)   | glyA(4)    | pgm(862?) | tkt(51)  | uncA(1)    |
| ./49_R1.fastq.gz_assembly/final.contigs.fa | campylobacter           | 583                | aspA(4)    | glnA(7)    | gltA(10)   | glyA(4)    | pgm(42)   | tkt(51)  | uncA(1)    |
| ./50_R1.fastq.gz_assembly/final.contigs.fa | campylobacter           | 583                | aspA(4)    | glnA(7)    | gltA(10)   | glyA(4)    | pgm(42)   | tkt(51)  | uncA(1)    |
| ./51_R1.fastq.gz_assembly/final.contigs.fa | campylobacter           | -                  | aspA(2)    | glnA(61)   | gltA(4)    | glyA(64)   | pgm(127)  | tkt(20)  | uncA(23)   |
| ./52_R1.fastq.gz_assembly/final.contigs.fa | campylobacter           | 4709               | aspA(33)   | glnA(39)   | gltA(30)   | glyA(296)  | pgm(104)  | tkt(85)  | uncA(17)   |
| ./53_R1.fastq.gz_assembly/final.contigs.fa | campylobacter           | -                  | aspA(2)    | glnA(17)   | gltA(~207) | glyA(3)    | pgm(2)    | tkt(1)   | uncA(5)    |
| ./54_R1.fastq.gz_assembly/final.contigs.fa | campylobacter           | 3923               | aspA(2)    | glnA(61)   | gltA(120)  | glyA(38)   | pgm(40)   | tkt(34)  | uncA(35)   |
| ./55_R1.fastq.gz_assembly/final.contigs.fa | campylobacter           | 4709               | aspA(33)   | glnA(39)   | gltA(30)   | glyA(296)  | pgm(104)  | tkt(85)  | uncA(17)   |
| ./56_R1.fastq.gz_assembly/final.contigs.fa | campylobacter           | -                  | aspA(2)    | glnA(17)   | gltA(2)    | glyA(3)    | pgm(2)    | tkt(1)   | uncA(223)  |
| ./57_R1.fastq.gz_assembly/final.contigs.fa | campylobacter           | 829                | aspA(33)   | glnA(39)   | gltA(30)   | glyA(82)   | pgm(113)  | tkt(43)  | uncA(17)   |
| ./58_R1.fastq.gz_assembly/final.contigs.fa | campylobacter           | 2178               | aspA(33)   | glnA(39)   | gltA(66)   | glyA(82)   | pgm(104)  | tkt(44)  | uncA(174)  |
| ./59_R1.fastq.gz_assembly/final.contigs.fa | campylobacter           | -                  | aspA(15)   | glnA(423)  | gltA(78)   | glyA(18)   | pgm(~205) | tkt(86)  | uncA(188)  |
| ./60_R1.fastq.gz_assembly/final.contigs.fa | campylobacter           | 7435               | aspA(7)    | glnA(172)  | gltA(21)   | glyA(49)   | pgm(125)  | tkt(224) | uncA(1)    |
| ./61_R1.fastq.gz_assembly/final.contigs.fa | campylobacter           | 1033               | aspA(2)    | glnA(61)   | gltA(4)    | glyA(64)   | pgm(126)  | tkt(7)   | uncA(23)   |
| ./62_R1.fastq.gz_assembly/final.contigs.fa | campylobacter           | 7435               | aspA(7)    | glnA(172)  | gltA(21)   | glyA(49)   | pgm(125)  | tkt(224) | uncA(1)    |
| ./63_R1.fastq.gz_assembly/final.contigs.fa | campylobacter           | 7435               | aspA(7)    | glnA(172)  | gltA(21)   | glyA(49)   | pgm(125)  | tkt(224) | uncA(1)    |
| ./64_R1.fastq.gz_assembly/final.contigs.fa | campylobacter           | -                  | aspA(4)    | glnA(7)    | gltA(10)   | glyA(4)    | pgm(42)   | tkt(51)  | uncA(576?) |
| ./65_R1.fastq.gz_assembly/final.contigs.fa | campylobacter           | -                  | aspA(347?) | glnA(7)    | gltA(10)   | glyA(4)    | pgm(42)   | tkt(51)  | uncA(1)    |
| ./66_R1.fastq.gz_assembly/final.contigs.fa | campylobacter           | 583                | aspA(4)    | glnA(7)    | gltA(10)   | glyA(4)    | pgm(42)   | tkt(51)  | uncA(1)    |
| ./67_R1.fastq.gz_assembly/final.contigs.fa | campylobacter           | 583                | aspA(4)    | glnA(7)    | gltA(10)   | glyA(4)    | pgm(42)   | tkt(51)  | uncA(1)    |
| ./68_R1.fastq.gz_assembly/final.contigs.fa | campylobacter           | 583                | aspA(4)    | glnA(7)    | gltA(10)   | glyA(4)    | pgm(42)   | tkt(51)  | uncA(1)    |
| ./69_R1.fastq.gz_assembly/final.contigs.fa | campylobacter           | 583                | aspA(4)    | glnA(7)    | gltA(10)   | glyA(4)    | pgm(42)   | tkt(51)  | uncA(1)    |
| ./70_R1.fastq.gz_assembly/final.contigs.fa | campylobacter           | 4709               | aspA(33)   | glnA(39)   | gltA(30)   | glyA(296)  | pgm(104)  | tkt(85)  | uncA(17)   |
| ./71_R1.fastq.gz_assembly/final.contigs.fa | campylobacter           | 3923               | aspA(2)    | glnA(61)   | gltA(120)  | glyA(38)   | pgm(40)   | tkt(34)  | uncA(35)   |
| ./72_R1.fastq.gz_assembly/final.contigs.fa | campylobacter           | 829                | aspA(33)   | glnA(39)   | gltA(30)   | glyA(82)   | pgm(113)  | tkt(43)  | uncA(17)   |
| ./73_R1.fastq.gz_assembly/final.contigs.fa | campylobacter           | 4709               | aspA(33)   | glnA(39)   | gltA(30)   | glyA(296)  | pgm(104)  | tkt(85)  | uncA(17)   |
| ./74_R1.fastq.gz_assembly/final.contigs.fa | campylobacter           | 2178               | aspA(33)   | glnA(39)   | gltA(66)   | glyA(82)   | pgm(104)  | tkt(44)  | uncA(174)  |
| ./75_R1.fastq.gz_assembly/final.contigs.fa | campylobacter           | -                  | aspA(2)    | glnA(17)   | gltA(2)    | glyA(3)    | pgm(2)    | tkt(1)   | uncA(223)  |
| ./76_R1.fastq.gz_assembly/final.contigs.fa | campylobacter           | -                  | aspA(18)   | glnA(22)   | gltA(398?) | glyA(104)  | pgm(25)   | tkt(160) | uncA(60)   |
| ./77_R1.fastq.gz_assembly/final.contigs.fa | campylobacter           | 1172               | aspA(53)   | glnA(39)   | gltA(44)   | glyA(82)   | pgm(118)  | tkt(35)  | uncA(36)   |
| ./78_R1.fastq.gz_assembly/final.contigs.fa | campylobacter           | -                  | aspA(2)    | glnA(17)   | gltA(~207) | glyA(3)    | pgm(2)    | tkt(1)   | uncA(5)    |
| ./79_R1.fastq.gz_assembly/final.contigs.fa | campylobacter           | 693                | aspA(2)    | glnA(29)   | gltA(4)    | glyA(48)   | pgm(13)   | tkt(24)  | uncA(57)   |
| ./80_R1.fastq.gz_assembly/final.contigs.fa | campylobacter           | 3137               | aspA(9)    | glnA(1)    | gltA(21)   | glyA(28)   | pgm(176)  | tkt(3)   | uncA(35)   |
| ./81_R1.fastq.gz_assembly/final.contigs.fa | campylobacter           | 45                 | aspA(4)    | glnA(7)    | gltA(10)   | glyA(4)    | pgm(1)    | tkt(7)   | uncA(1)    |
| ./82_R1.fastq.gz_assembly/final.contigs.fa | campylobacter           | 6309               | aspA(27)   | glnA(2)    | gltA(78)   | glyA(501)  | pgm(43)   | tkt(86)  | uncA(31)   |
| ./83_R1.fastq.gz_assembly/final.contigs.fa | campylobacter           | -                  | aspA(~285) | glnA(~308) | gltA(61)   | glyA(~195) | pgm(~544) | tkt(7)   | uncA(~258) |
| ./84_R1.fastq.gz_assembly/final.contigs.fa | campylobacter           | 137                | aspA(4)    | glnA(7)    | gltA(10)   | glyA(4)    | pgm(42)   | tkt(7)   | uncA(1)    |
| ./85_R1.fastq.gz_assembly/final.contigs.fa | campylobacter           | 7809               | aspA(2)    | glnA(59)   | gltA(4)    | glyA(27)   | pgm(13)   | tkt(25)  | uncA(23)怀  |
