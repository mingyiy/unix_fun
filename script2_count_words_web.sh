## count top 10 words in a test

# extract text from web source: 
lynx --dump http://www.bbc.com/travel/story/20200115-the-worlds-most-prized-pepper > input_file.txt

# separate words in a list
cat input_file.txt | tr "," "\n" | tr " " "\n" | sort > file2_sort.txt

# remove ". in front or end of a word.
sed 's/[".]//g' file2_sort.txt > file3_sort.txt

# trans capital to low case
cat file3_sort.txt | tr 'A-Z' 'a-z' > file4_sort.txt

# sort and count each word:
cat file4_sort.txt| uniq -c | sort -nr | nl > out_count_words.txt

