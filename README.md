## openHAB Linux Package Builder

This repository uses [Gradle](https://gradle.org/) to download the openHAB distributions and package them as .deb or .rpm files.
These packages follow the usual service or program directory conventions; therefore the directories are different to a manual openHAB install.

Anyone can use a fork of this repo to build their own openHAB .deb or .rpm files.
Upload tasks are specific to openHAB's distribution services, powered by [JFrog's Artifactory](https://openhab.jfrog.io/) and [Bintray](https://bintray.com/openhab).

For information about the general openHAB package, please visit the [openhab-distro github repo](https://github.com/openhab/openhab-distro).
For general information about openHAB, please visit the [openHAB homepage](http://www.openhab.org/).

## Tasks

A list of up to date tasks can be obtained by using the command `./gradlew tasks`. Common tasks include:

| Task Name                                 | Description                                                 |
|:------------------------------------------|:------------------------------------------------------------|
| `downloadDistros`                         | Downloads the latest compressed packages                    |
| `download-[TYPE]-openhab-[PACKAGE NAME]` | Downloads the latest version of the specified package       |
| `distro-[TYPE]-openhab-[PACKAGE NAME]`   | Builds a specific package without uploading it              |
| `packageDistros`                          | Runs all `distro-*` tasks                                   |

You can set the target version by setting `OPENHAB_VERSION=x.x.x`, `OPENHAB_TESTING_VERSION=x.x.x.rcx` and `OPENHAB_SNAPSHOT_VERSION=x.x.x` environment variables

Tasks with dependencies (e.g. package depends on a download task) will run them first automatically.

## Package Types

The two package `[TYPE]`s are 

 - Deb
 - Rpm

The list of `[PACKAGE NAME]`s are:

 - release
   - addons-release
   - addons-legacy-release
 - testing
   - addons-testing
   - addons-legacy-testing
 - snapshot
   - addons-snapshot
   - addons-legacy-snapshot
 
## Examples

```shell
## Build the .deb package for openhab release and place it in build/distributions.
sudo ./gradlew distro-Deb-openhab-release

## Build the .rpm packages for openhab snapshot and place them in build/distributions.
sudo ./gradlew distro-Rpm-openhab-snapshot distro-Rpm-openhab-addons-snapshot
```
