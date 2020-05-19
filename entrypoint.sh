#!/bin/bash -l

echo ::set-output name=time::$($1 2>&1)
