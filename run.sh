#!/usr/bin/env bash

cd /project
unzip package.zip
cd -
th /validate.lua
