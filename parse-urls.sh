#!/bin/bash

file_name=change-me

#Add each new url with a new line
urls=(
http://change-me
)

#Change script_dir and web_dir if needed
script_dir=/change-me
script_file=.${file_name}.tmp
web_dir=/var/www/html
web_file=${file_name}.txt
timestamp=$(date "+%FT%T")

#Curl each url defined above and parse for single ip addresses or blocks and add timestamp information to the first line
for url in "${urls[@]}"
do
  curl ${url} | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}(/[0-9]{1,2})?" | sed "1 s|$| #${url} - retrieved ${timestamp}|" >> ${script_dir}/${script_file}
done

cp ${script_dir}/${script_file} ${web_dir}/${web_file}
rm ${script_dir}/${script_file}