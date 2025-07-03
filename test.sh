#!/usr/bin/env bash

if [ -z "$1" ]; then
  bundle exec ruby -Ilib test/automated.rb
else
  bundle exec ruby -Ilib $1
fi
