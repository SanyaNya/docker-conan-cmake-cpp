# Linux

* There is two build and run scripts for 32/64 bit images 
* You can configure base linux image by setting BASE_IMAGE variable(default is centos7) in build script,
  but you need to modify Dockerfile(9 line) to use package manager from your distribution
* You can configure gcc version by setting GCC_VERSION variable in build script,
  check https://gcc.gnu.org/releases.html for available gcc versions
* You can configure cmake version by setting CMAKE_VERSION variable in build script,
  check https://github.com/Kitware/CMake/releases for available cmake versions
* You can specify cpu architecture for gcc by setting ARCH variable in build script
