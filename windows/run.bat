set MOUNT_DIR_PATH=C:\Users\%USERNAME%
set MOUNT_DIR=Desktop

docker run --rm -it -v "%MOUNT_DIR_PATH%\%MOUNT_DIR%":"C:\%MOUNT_DIR%" windows-conan-cmake-cpp cmd.exe
