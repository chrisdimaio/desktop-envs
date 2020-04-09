#! /bin/bash

if [ $# -gt 0 ]; then
    if [ -d $(pwd)/$1 ]; then
        ln -fs $(pwd)/$1/.profile $HOME/.profile
    else
        echo "Environment '$1' not found!"
    fi

else
    echo "Usage: install {ENVIRONMENT}"
fi