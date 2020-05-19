#!/bin/bash -l

echo ::set-output name=f5-cli-command-output::$($1 2>&1)

