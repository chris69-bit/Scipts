
#!/bin/bash

echo "Give the word you want to get the number of s"
read s_num

grep -o "s" <<< $s_num | wc -l
