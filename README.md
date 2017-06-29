## openHAB Linux Package Builder

This repository uses [Gradle](https://gradle.org/) to download the openHAB distributions and package them as .deb or .rpm files.
These packages follow the usual service or program directory conventions; therefore the directories are different to a manual openHAB install.

Anyone can use a fork of this repo to build their own openHAB .deb or .rpm files.
Upload tasks are specific to openHAB's distribution services, powered by [JFrog's Artifactory](https://openhab.jfrog.io/) and [Bintray](https://bintray.com/openhab).

For information about the general openHAB 2 package, please visit the [openhab-distro github repo](https://github.com/openhab/openhab-distro).
For general information about openHAB2, please visit the [openHAB homepage](http://www.openhab.org/).

## Tasks

A list of up to date tasks can be obtained by using the command `./gradlew tasks`. Common tasks include:

| Task Name                                 | Description                                                 |
|:------------------------------------------|:------------------------------------------------------------|
| `downloadDistros`                         | Downloads the latest compressed packages                    |
| `download-[TYPE]-openhab2-[PACKAGE NAME]` | Downloads the latest version of the specified package       |
| `distro-[TYPE]-openhab2-[PACKAGE NAME]`   | Builds a specific package without uploading it              |
| `packageDistros`                          | Runs all `distro-*` tasks                                   |

Tasks with dependencies (e.g. building needs download to run first) will run them first automatically.

## Package Types

The two package `[TYPE]`s are 

 - Deb
 - Rpm

Examples of `[PACKAGE NAME]` are:

 - 2.1.0
 - addons-2.1.0
 - addons-legacy-2.1.0
 - snapshot
 - addons-snapshot
 - addons-legacy-snapshot
 