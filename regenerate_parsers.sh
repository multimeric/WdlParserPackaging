#!/bin/bash

pip install -r dev-requirements.txt

rm -rf wdl_parser/development*.py
rm -rf wdl_parser/version*.py
rm -rf wdl_parser/draft*.py

for version_path in wdl/versions/*; do
  version=`basename $version_path | sed 's/\-/_/g' | sed 's/\./_/g' | sed -E 's/^([0-9].+)/version_\1/g'`
  grammar=$version_path/parsers/grammar.hgr

  if [[ -f $grammar ]]; then
    hermes generate $version_path/parsers/grammar.hgr --language=python --name=$version --header --directory wdl_parser
  fi
done

rename 's/_parser.py/.py/g' wdl_parser/*
