#!/bin/bash
#ANT_HOME=/home/work/local/apache-ant-1.8.1
#JAVA_HOME=/home/work/local/jdk1.6.0_45

if [ "$#" -lt 1 ]; then
  echo "$0 [CMD]"
  exit 1
fi

export LANG=en_US.utf8
export PATH=$ANT_HOME/bin:$JAVA_HOME/bin:$PATH
mkdir /home/work/local/logs/
ant -DCMD="$1" -f script.xml ExeDemo | tee -a /home/work/local/logs/prj/exedemo/`date +'%Y%m%d'`.log
