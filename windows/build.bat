set BASE_IMAGE=mcr.microsoft.com/windows/servercore:ltsc2022
set VS_VERSION=17
set VS_VERSION_YEAR=2022

docker build -t windows-conan-cmake-cpp ^
  --build-arg BASE_IMAGE=%BASE_IMAGE% ^
  --build-arg VS_VERSION=%VS_VERSION% ^
  --build-arg VS_VERSION_YEAR=%VS_VERSION_YEAR% ^
  .
