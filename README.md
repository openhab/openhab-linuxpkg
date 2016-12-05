# openhab-linuxpkg

Repo for Linux deb packages

This project is work in progress and not yet production ready.

## Warning

  The downloads will make up to 400 megs of traffic!

## Description

As long as openHAB 2.0.0b5 is not released only the beta4 and snapshot build will work.

By executing

 ```bash
 ./gradlew buildSnapshot
 ```

you will find two packages in build/distributions named **openhab2-offline_2.0.0.2016yyyyMMddHHmmss-1_all.deb** and
**openhab2-online_2.0.0.2016yyyyMMddHHmmss-1_all.deb**.

## Tasks

* build all packages

```bash
./gradlew packageDistros
```

* build beta 4

 ```bash
 ./gradlew buildBeta4
 ```

* build snapshots

 ```bash
 ./gradlew buildSnapshot
 ```

* build offline snapshot

 ```bash
 ./gradlew distro-openhab2-offline-snapshot
 ```

* build online snapshot

 ```bash
 ./gradlew distro-openhab2-online-snapshot
 ```

* build openhab2 offline beta 4

```bash
 ./gradlew distro-openhab2-offline-b4
```

* download all packages

 ```bash
 ./gradlew downloadDistros
 ```

* download offline snapshot

```bash
./gradlew download-openhab2-offline-snapshot
```

* download online snapshot

```bash
./gradlew download-openhab2-online-snapshot
```

* download offline beta 4

```bash
./gradlew download-openhab2-offline-b4
```

* download online beta 4

```bash
./gradlew download-openhab2-online-b4
```
