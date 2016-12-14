# openhab-linuxpkg

Repo for Linux deb packages

This project is work in progress and not yet production ready.

## Warning

  The downloads will make up to 400 megs of traffic!

## Description

As long as openHAB 2.0.0b5 is not released only the snapshot build will work.

By executing

 ```bash
 ./gradlew buildSnapshot
 ```

you will find two packages in build/distributions named **openhab2-offline_2.0.0.yyyyMMddHHmmss-1_all.deb** and
**openhab2-online_2.0.0.yyyyMMddHHmmss-1_all.deb**.

## Tasks

There are a series of gradle tasks that can executed by following the syntax: `./gradlew [TASK NAME]`

| Task Name                          | Description                                               |
|:-----------------------------------|:----------------------------------------------------------|
| `buildBeta5`                       | Builds and uploads Beta5 (online and offline)             |
| `buildSnapshot`                    | Builds and uploads the latest online and offline snapshot |
| `upload-openhab2-[PACKAGE NAME]`   | Builds and uploads a specified package                    |
| `packageDistros`                   | Runs all `distro-*` tasks                                 |
| `distro-openhab2-[PACKAGE NAME]`   | Builds a specific package without uploading it            |
| `downloadDistros`                  | Downloads the latest compressed packages                  |
| `download-openhab2-[PACKAGE NAME]` | Downloads the latest version of the specified package     |
| `calculateMetadata`                | Instructs bintray to calculate the metadata information   |


The variations of `[PACKAGE NAME]` are:

- online-snapshot
- offline-snapshot
- online-b5 (not yet ready)
- offline-b5 (not yet ready)
