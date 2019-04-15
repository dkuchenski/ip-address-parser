# ip-address-parser
Used to grab ip addreses and push to web server for Palo Alto Networks EDL

Copy the script file to your server that has a web server installed (apache or nginx). Once you have changed the default variables (file_name, urls, and script_dir), make the script executable and run it. It should drop a file in your web_dir that is formatted correctly for a Palo Alto Networks firewall to injest as an external dynamic list. To keep your list up to date, set a cron job to run the script at whatever internal the firewall will check the web server.

Please see the example file which creates a list of russian, netherlands, nigerian, and tor exit node ip addresses. 
