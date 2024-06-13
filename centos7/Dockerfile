ARG BASE_IMAGE
FROM $BASE_IMAGE

RUN yum update -y

#gcc
ARG GCC_VERSION
ARG ARCH
RUN yum -y install bzip2 wget gcc gcc-c++ gmp-devel mpfr-devel libmpc-devel make && \
    wget http://gnu.mirror.constant.com/gcc/gcc-$GCC_VERSION/gcc-$GCC_VERSION.tar.gz && \
    tar zxf gcc-$GCC_VERSION.tar.gz && \
    mkdir gcc-build && cd gcc-build && \
    ../gcc-$GCC_VERSION/configure --prefix=/usr --host=$ARCH-pc-linux-gnu --target=$ARCH-pc-linux-gnu --build=$ARCH-pc-linux-gnu --enable-languages=c,c++ --disable-multilib && \
    make -j$(nproc) && yum -y remove gcc gcc-c++ && make install && \
    cd .. && rm -rf gcc-build && rm -rf gcc-$GCC_VERSION && rm gcc-$GCC_VERSION.tar.gz

#cmake
ARG CMAKE_VERSION
RUN yum install -y git
RUN git clone --depth=1 https://github.com/Kitware/CMake --branch=v$CMAKE_VERSION && \
    cd CMake && \
    ./bootstrap --prefix=/usr -- -DCMAKE_USE_OPENSSL=OFF && make -j$(nproc) && make install && \
    cd .. && rm -r CMake

#conan
RUN yum install -y python36
RUN python3 -m pip install conan
