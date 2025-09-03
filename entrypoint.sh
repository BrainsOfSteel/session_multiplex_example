#!/bin/bash
if [ "$#" -eq 0 ]; then
    sleep infinity
else
    exec "$@"
fi