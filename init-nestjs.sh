#!/bin/sh

if [ $# != 1 ]; then
  echo "Please use like \n> sh init-nestjs.sh <app-name>"
  exit 1
fi

mkdir $1

RELATIVE_DIR=`dirname "$0"`

cp -r \
  $RELATIVE_DIR/src \
  $RELATIVE_DIR/test \
  $RELATIVE_DIR/.eslintrc \
  $RELATIVE_DIR/.gitignore \
  $RELATIVE_DIR/.prettierrc \
  $RELATIVE_DIR/nest-cli.json \
  $RELATIVE_DIR/package.json \
  $RELATIVE_DIR/tsconfig.build.json \
  $RELATIVE_DIR/tsconfig.json \
  $RELATIVE_DIR/README.md \
  $RELATIVE_DIR/pnpm-lock.yaml \
  $1
