#!/bin/bash

if [ "$(expr substr $(uname -s) 1 10)" == "MINGW32_NT" ]; then
    SUDO=""
else
    SUDO="sudo"
fi

echo "Using bc:"
echo "5 + 7" | bc

echo -e "\nUsing comm:"
echo -e "apple\nbanana\norange" > file1.txt
echo -e "apple\ngrape\norange" > file2.txt
echo "Common lines:"
comm -12 <(sort file1.txt) <(sort file2.txt)

echo -e "\nUsing chown:"
touch example.txt
ls -l example.txt
$SUDO chown root example.txt
ls -l example.txt

echo -e "\nUsing chgrp:"
$SUDO chgrp Administrators example.txt
ls -l example.txt

echo -e "\nUsing cron:"
echo "*/1 * * * * echo 'Hello, World!'" > cronjob
crontab cronjob
crontab -l

echo -e "\nUsing dd:"
echo "Hello, world!" > source.txt
dd if=source.txt of=target.txt

echo -e "\nUsing diff:"
diff source.txt target.txt

echo -e "\nUsing finger:"
finger

echo -e "\nUsing find:"
find . -type f -name "*.txt"

echo -e "\nUsing ftp:"
ftp -n <<END
open ftp.example.com
user username password
put example.txt
quit
END

echo -e "\nUsing lock:"
echo "This command doesn't exist in Windows."

echo -e "\nUsing ln:"
echo "Symbolic links behave differently in Windows. Skipping."

echo -e "\nUsing lp:"
echo "The 'lp' command doesn't exist in Windows."

echo -e "\nUsing lpstat:"
echo "The 'lpstat' command doesn't exist in Windows."

echo -e "\nUsing mesg:"
echo "The 'mesg' command doesn't exist in Windows."
