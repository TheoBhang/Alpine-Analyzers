# Alpine-Analyzers

[Original Analyzers and responders](https://github.com/TheHive-Project/Cortex-Analyzers)

TheHiveProject/Cortex-Analyzers but changed the Dockerfile to make them with alpine

## Why ?

Alpine is much lighter so all analyzers and all responders take less space.

Since it is lighter it is also a little bit faster in overhaul.

## Sizes

Most of the analyzers and responders are between 140Mb and 200Mb

Some that requires lots of dependencies are over 400Mb but less than 1Gb

FileInfo is the only analyzer that is more than 2Gb but is still lighter than the usual analyzer.
