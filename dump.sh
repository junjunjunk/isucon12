#!/bin/bash

set -eux

for i in `seq 1 100`; do
    sqlite3 "$i".db .dump > "$i".sql
    cat "$i".sql | python3 convert.py | sed 's/CREATE TABLE/CREATE TABLE IF NOT EXISTS/g' > "$i".mysql.sql
done
