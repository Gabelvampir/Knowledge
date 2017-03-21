delete line of text from multiple files:

sed -i.bak '/line of text/d' * 

If your version of sed allows the -i.bak flag (edit in place). If not simply put it in a bash loop:

for file in $(ls *.txt)
do
    sed '/line of text/d' $file > $file.new_file.txt
done
-- http://stackoverflow.com/questions/1182756/remove-line-of-text-from-multiple-files-in-linux
====================================================
