# openhab-linuxpkg
Repo for Linux deb packages

This project is work in progress and not yet production ready.

## Warning
  The downloads will make up to 400 megs of traffic!

## Description

As long as openHAB 2.0.0b5 is not released only the snapshot build will work.

By executing

 ```
 ./gradlew buildSnapshot
 ```

you will find two packages in build/distributions named **openhab2-offline_2.0.0.2016yyyyMMddHHmmss-1_all.deb** and
**openhab2-online_2.0.0.2016yyyyMMddHHmmss-1_all.deb**.

## Tasks
 * build all packages

```
./gradlew packageDistros
```

 * build beta 4

 ```
 ./gradlew buildBeta5
 ```

 * build snapshots

 ```
 ./gradlew buildSnapshot
 ```

 * build offline snapshot

 ```
 ./gradlew distro-openhab2-offline-snapshot
 ```

 * build online snapshot

 ```
 ./gradlew distro-openhab2-online-snapshot
 ```

 * build openhab2 offline beta 5

```
 ./gradlew distro-openhab2-offline-b5
```
 * download all packages

 ```
 ./gradlew downloadDistros
 ```

  * download offline snapshot

  ```
  ./gradlew download-openhab2-offline-snapshot
  ```

  * download online snapshot

  ```
  ./gradlew download-openhab2-online-snapshot
  ```

  * download offline beta 5

  ```
    ./gradlew download-openhab2-offline-b5
  ```

    * download online beta 5

  ```
    ./gradlew download-openhab2-online-b5
  ```