#!/bin/sh -l

f5 $1
time=$(date)
echo "::set-output name=time::$time"
