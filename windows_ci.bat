cd windows
call .\build.bat
docker tag windows-conan-cmake-cpp sanyanya/windows-conan-cmake-cpp
docker push sanyanya/windows-conan-cmake-cpp
