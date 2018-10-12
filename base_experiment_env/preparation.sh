#!/bin/bash

cp -r ~/.emacs.d/elpa ./
tar -czvf emacs_elpa.tgz elpa
rm -rf elpa

cp ~/workspace/conf_python/requirements.txt ./
