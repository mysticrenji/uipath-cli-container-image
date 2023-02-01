#!/bin/sh
if [ $# -eq 0 ];
then
  echo "$0: Missing arguments for UIPathCLI"
  exit 1
else
dotnet "/tools/uipcli.dll" $1 $2 $3 -o $4
fi
