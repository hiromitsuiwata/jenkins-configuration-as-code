#!/bin/bash

while read line
do
  name=$(cut -d ':' -f 1 <<< ${line})
  version=$(cut -d ':' -f 2 <<< ${line})
  url="https://updates.jenkins-ci.org/download/plugins/${name}/${version}/${name}.hpi"
  echo ${url}
  wget --timeout 3 -t 1 ${url}
done < plugins_extra.txt
