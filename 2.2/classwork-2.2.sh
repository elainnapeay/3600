#!/bin/bash
# 2.2
# Author: Elainna
# Date: 09/6/2022
if [ $# -eq 0 ]; then
    echo "-u, -d, -p"
fi
while [ -n "$1" ]; do
    case "$1" in
    -u) echo "$USER" ;;
    -d)
        if [[ $2 != [1-7] ]]; then
            echo "not a valid argument"
            echo "[1-7] are valid arguments"
        fi
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
    -up) echo "$USER" 
    pwd ;;
    p) pwd ;;
    d)
        if [[ $2 != [1-7] ]]; then
            echo "not a valid argument"
            echo "[1-7] are valid arguments"
        fi
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

    --)
        shift
        break
        ;;
    *) echo "thank you for using" ;;
    esac
    shift
done
exit 0
