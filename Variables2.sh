
#!/bin/bash

echo " All args passed to the script : $@"
echo " Number of vars passed to the script : $#"
echo "Script name : $0"
echo "Present directory : $PWD"
echo "Who is running : $USER"
echo "Home directory for the current user : $HOME"
echo "PID of this script : $$"
sleep 100 &
echo "PID of recently executed background process :$!"
echo "All args passed to the script :$*"

