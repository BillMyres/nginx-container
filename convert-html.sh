#!/bin/bash

html_path=/usr/share/nginx/html

cp -r /root/* $html_path/
>&2 echo "\tCopied /root to $html_path"

for f in $html_path/*
do

  if [ ${f: -5} == ".html" ]; then
    >&2 echo "\tConverting $f"

    sed -i "s/|HOSTTYPE|/switch/g" $f
    sed -i "s/|HOSTNAME|/`hostname`/g" $f
  fi

done
