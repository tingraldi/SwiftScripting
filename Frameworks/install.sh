#!/bin/sh

INSTALL_DIR=/Library/Frameworks
PROJECTS=`/bin/ls -d *Scripting *Utilities`

for project in $PROJECTS
do
    sudo rm -rf "$INSTALL_DIR/$project.framework"
    sudo mv Build/"$project.framework" "$INSTALL_DIR"
done
