if [ "$1" == -a ]; then
    ls -lha
elif [[ -z "$1" ]]; then
    ls -lh
else
    echo "Useage: $0 [options]"
    echo "options:"
    echo "  -a : list all (including hidden) files/directories. Same as: ls -lha"
fi
