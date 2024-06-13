# Windows

* For running windows containers you can refer to my guide: https://gist.github.com/SanyaNya/0b107cfccb8311a68436eeab10a1ba28
* Default docker container size(20G) is not enough for building docker image,
  increase it in daemon.json(if you didn't use the guide in the paragraph above):
  https://github.com/MicrosoftDocs/Virtualization-Documentation/blob/live/virtualization/windowscontainers/manage-containers/container-storage.md#storage-limits
* You can configure base windows image in build.bat by setting BASE_IMAGE variable(servercore:ltsc2022 is default)
* You can configure Visual Studio version in build.bat(2022 is default):
    * Visual Studio 2017 - VS_VERSION=15 and VS_VERSION_YEAR=2017
    * Visual Studio 2019 - VS_VERSION=16 and VS_VERSION_YEAR=2019
    * Visual Studio 2022 - VS_VERSION=17 and VS_VERSION_YEAR=2022
* You can configure mount folder by setting MOUNT_DIR_PATH and MOUNT_DIR variables(Desktop folder is default)
