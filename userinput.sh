#write a script to accept file name from user and archive it if exists  
#!/bin/bash
read -p "enter name of the file: " filename
find . -iname ${filename}
echo $?