# openhab-linuxpkg
Repo for Linux deb packages

## Tasks
 * build all packages

```
./gradlew packageDistros
```

 * build beta 4

 ```
 ./gradlew buildBeta4
 ```

 * build snapshots

 ```
 ./gradlew buildSnapshot
 ```

 * download all packages

 ```
 ./gradlew downloadDistros
 ```

  * download offline snapshot

  ```
  ./gradlew ./gradlew download-openhab2-offline-snapshot
  ```

  * download online snapshot

  ```
  ./gradlew ./gradlew download-openhab2-online-snapshot
  ```

  * download offline beta 4

  ```
    ./gradlew ./gradlew download-openhab2-offline-b4
  ```

    * download online beta 4

  ```
    ./gradlew ./gradlew download-openhab2-online-b4
  ```