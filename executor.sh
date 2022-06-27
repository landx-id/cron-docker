#!/bin/bash

dir='/opt/commands'
files=`ls $dir`
for file in $files
do
    $dir/$file
done