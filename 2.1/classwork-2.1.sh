#!/bin/bash
# 2.1
# Author: Elainna
# Date: 08/30/2022
if [ $# -eq 0 ] ; then
    echo "-u, -d, -p" 
fi
while [ -n "$1" ]
do
    case "$1" in 
        -u) echo $USER ;;
        -d) 
        param="$2"
                case "$2" in
                1) echo "Sunday" ;;
                2) echo "Monday" ;;
                3) echo "Tuesday" ;;
                4) echo "Wednesday" ;;
                5) echo "Thursday" ;;
                6) echo "Friday" ;;
                7) echo "Saturday" ;;
esac
shift
;;
        -p) pwd ;;


--) shift
break ;;
*) echo thank you for using ;
esac
shift
done
