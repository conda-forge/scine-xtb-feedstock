#!/usr/bin/env bash
set -ex

mkdir -p scine_xtb_wrapper/
sed \
  -e s/@Xtb_VERSION@/$PKG_VERSION/ \
  -e s/@xtb_PY_DEPS@// \
  src/Xtb/Python/setup.py > setup.py
cp -v src/Xtb/Python/__init__.py scine_xtb_wrapper/
pip install . -vv --no-deps
