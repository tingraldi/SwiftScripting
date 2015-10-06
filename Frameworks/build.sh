#!/bin/sh

PROJECTS=`/bin/ls -d *Scripting *Utilities`

for project in $PROJECTS
do
    (
    echo $project
    cd "$project/$project"
    NAME=`ls *sdef | head -1 | cut -f1 -d'.'`
    #~/Projects/Scripting/SwiftScripting/sbhc.py "$NAME.h"
    #rm "${NAME}Enums.h"
#    ~/Projects/Scripting/SwiftScripting/sbsc.py "$NAME.sdef"
    cd ..
    rm -rf build
    xcodebuild
    )
done

mkdir -p Build

for project in $PROJECTS
do
    mv "$project/build/Release/$project.framework" Build
done
