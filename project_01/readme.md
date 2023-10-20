Project Requirement

In the given directory, if you find the files more thangiven size(ex:20mb), or files older than given days (ex:10 days)
compress those files and move in a 'archieve' folder


Purpose of the script

If our server creates regular log files in a long run time, eventually the disk space runs out, in order to avoid it we can use this script. 


Steps of script

01 provide path of the directory
02 check if directory is present
03 create 'archieve' folder
04 find all files with size more than 20mb
05 compress the files
06 move compressed file to archieve
07 make a cron job to run the script automatically


