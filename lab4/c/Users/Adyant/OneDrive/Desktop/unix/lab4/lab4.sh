# different codes tried for awk command
echo 'awk command outputs'
   awk '{print $1, $3}' file1.txt


   awk '/pattern/' file1.txt


   awk '!/pattern/' file1.txt


   awk '$2 ~ /pattern/' file1.txt

   awk '$1 > 7' file1.txt


   awk 'END {print NR}' file1.txt


   awk -F',' '{print $1}' file1.txt


   awk '/pattern1/ && /pattern2/' file1.txt


   awk '{total += $1} END {print total}' file1.txt


    awk '{$2 = "replacement"} 1' file1.txt


    awk '{count += gsub(/pattern/, "")} END {print count}' file1.txt


    awk 'NR>=10 && NR<=20' file1.txt

    awk '!seen[$0]++' file1.txt

    awk '{print toupper($0)}' file1.txt


    awk '/pattern/{print "Found:" $0} !/pattern/{print "Not Found:" $0}' file1.txt

# codes tried for the sed command
echo 'sed command outputs'

   sed 's/pattern/replacement/' file1.txt

   sed '3s/pattern/replacement/' file1.txt

   sed '2,5s/pattern/replacement/' file1.txt

   sed 's/pattern/replacement/g' file1.txt

   sed -i 's/pattern/replacement/' file1.txt

   sed '/pattern/d' file1.txt

   sed -n '2,5p' file1.txt

   sed '/pattern/!d' file1.txt

   sed '3i\new_line' file1.txt

    sed '3a\new_line' file1.txt

    sed '3d' file1.txt

    sed -n '=' file1.txt | sed 'N;s/\n/ /'

    sed 's|old_path|new_path|' file1.txt

    sed -n '/start_pattern/,/end_pattern/p' file1.txt

    sed 's/.*/\U&/' file1.txt

# tar command codes
echo 'tar command codes'

tar -cvf archive.tar file1.txt file2.txt ~/OneDrive/Desktop/unix/lab4

tar -xvf archive.tar

tar -tvf archive.tar

tar -xvf archive.tar ~/OneDrive/Desktop/unix/lab4

tar -cjvf archive.tar.bz2 file1.txt file2.txt ~/OneDrive/Desktop/unix/lab4

# cpio command codes
echo 'cpio command codes'
echo "file1.txt file2.txt" | cpio -o > archive.cpio

cpio -i < archive.cpio
echo "file1.txt file2.txt" | cpio -o -v > archive.cpio

cpio -i -v < archive.cpio

echo "file1.txt file2.txt" | cpio --create --preserve-modification-time --make-directories --format=ustar > archive.cpio

