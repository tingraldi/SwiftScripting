#!/bin/sh

PROJECTS=`/bin/ls -d *Scripting`

for project in $PROJECTS
do
    (
    echo $project
    cd "$project/$project"
    header_name=`echo $project | sed -e 's/Scripting//'`
    ../../../sbhc.py $header_name.h
    ../../../sbsc.py $header_name.sdef
    )
done
