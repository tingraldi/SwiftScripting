#!/bin/sh

PROJECTS=`/bin/ls -d *Scripting *Utilities`

for project in $PROJECTS
do
    (
    echo $project
    cd "$project"
    rm -rf build
    xcodebuild
    )
done

rm -rf Build
mkdir -p Build

for project in $PROJECTS
do
    mv "$project/build/Release/$project.framework" Build
done
