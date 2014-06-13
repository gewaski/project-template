#!/bin/bash

if [ "$#" -lt 1 ]; then
  echo "$0 [online/dev/qa/codev]"
  exit 1
fi

export JAVA_HOME=${JAVA_HOME_1_6}
echo $JAVA_HOME
export PATH=${JAVA_HOME}/bin:${PATH}
echo $PATH
bash gradle.sh clean gen$1 build$1 war buildTar

pushd output
mv prj.tar.gz prj-$1.tar.gz
popd

