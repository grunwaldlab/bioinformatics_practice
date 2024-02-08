library(readr)

theirs = read_delim('raw_data/md5.txt', delim = "  ", col_names = c("md5", "file"))
ours = read_delim('raw_data/md5_ours.txt', delim = "  ", col_names = c("md5", "file"))

theirs[theirs$md5 != ours$md5, "file"]

rep("1", 1000)
