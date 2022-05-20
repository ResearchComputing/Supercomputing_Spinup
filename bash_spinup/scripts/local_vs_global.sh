#!/bin/bash

#This script demonstrates that environment variables are global
#whereas local variables are local!

#We assume you have externally set the environment variable MYNAME as follows:
# $ export MYNAME=$USER
#and that you have externally set a local variable myname as follows
# $ myname=$USER

echo "local var=" $myname
echo "environment var=" $MYNAME

myname=$USER
echo "local var=" $myname

