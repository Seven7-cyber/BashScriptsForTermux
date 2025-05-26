#!/bin/bash
echo Creating Shared Storage for Termux
echo Enter yes or no
read Input
if [[ "$Input" == "yes" ]]; then
termux-setup-storage
else
echo termux shared storage has already been created by the user according to the input
fi
echo Bash File Name:
read File_Name
echo Moving to "~/storage/shared/sololeveling/BashScripts"
cd ~/storage/shared/sololeveling/BashScripts
echo Copying "$File_Name" to Home dir of Termux 
cp "$File_Name" ~/
echo Moving to ~/ 
cd ~/
echo Giving Executable and Read and Write Permission to  "$File_Name" 

chmod +x "$File_Name" 
chmod 777 "$File_Name" 
echo Permissions Given To execute the file, Type Command: ./"$File_Name"