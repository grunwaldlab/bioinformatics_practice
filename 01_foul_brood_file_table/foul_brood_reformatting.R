# Read names of files 
file_names = list.files('data/foul_brood/reads')

# Filter for reads (not needed because they are all in the read folder)
# is_reads = endsWith(file_names, suffix = '.fastq.gz')
# file_names = file_names[is_reads]

# Identify forward reads
forward_reads = file_names[endsWith(file_names, suffix = 'R1_001.fastq.gz')]

# Identify forward reads
reverse_reads = file_names[endsWith(file_names, suffix = 'R2_001.fastq.gz')]

# make table
output = data.frame(
    sample = "",
    fastq_1 = forward_reads,
    fastq_2 = reverse_reads,
    sra = "",
    reference = "",
    reference_id = "",
    report_group = "test"
)

# Save table
write.csv(output, file = "test_out.csv")
