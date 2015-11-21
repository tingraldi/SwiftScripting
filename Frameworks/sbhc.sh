#!/bin/sh

PROJECTS=`/bin/ls -d *Scripting`
SBHC=`pwd`/../sbhc.py

# Strip off "Scripting" from name of project
projectRoot() {
    chars=`echo $1 | wc -c`
    chars=`expr $chars - 10`
    echo $1 | cut -c1-$chars
}

for project in $PROJECTS
do
    (
    echo $project
    cd "$project/$project"
    root=`projectRoot $project`
    header="$root.h"
    $SBHC "$header"
    )
done

