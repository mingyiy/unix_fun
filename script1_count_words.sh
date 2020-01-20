## count top 10 words in a test

# extract text from web source: 
lynx --dump https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4663793 | head -n 800 > paper2_oxr1.txt

# separate words in a list
cat paper2_oxr1.txt | tr "," "\n" | tr " " "\n" | sort > file2_sort.txt

# remove ". in front or end of a word.
sed 's/[".]//g' file2_sort.txt > file3_sort.txt

# trans capital to low case
cat file3_sort.txt | tr 'A-Z' 'a-z' > file4_sort.txt

# sort and count each word:
cat file4_sort.txt| uniq -c | sort -nr | nl > out_count_words.txt
