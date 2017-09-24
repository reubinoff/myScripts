#!/bin/bash

repo_path='/home/mreubino/Development'
port=9000

pushd $repo_path ;nohup  python -m SimpleHTTPServer $port &> /dev/null ; popd;

