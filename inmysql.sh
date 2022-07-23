#!/bin/bash

set -eux

for i in `seq 1 100`; do
   mysql -uisucon -pisucon isuports < "$i".mysql.sql
done
