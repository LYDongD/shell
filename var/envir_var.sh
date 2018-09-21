#!/bin/bash

if [ $UID -eq 0 ]; then
    echo "Root User"
else
    echo "not root user: $USER"
fi
