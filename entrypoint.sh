#!/bin/bash -l

f5 config set-defaults --output json

f5 config set-defaults --disable-ssl-warnings true

echo ::set-output name=f5-cli-command-output::$($1 2>&1)

