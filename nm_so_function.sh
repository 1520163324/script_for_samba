#!/bin/bash

ls *.so | while read -r filename;do
        if nm -D ${filename} | grep 'T' | grep -q  "ldb_request";then
                echo "file_name:${filename}"
                nm -D $filename | grep 'T' | grep ldb_request
                echo "-------------------"
        fi
done
