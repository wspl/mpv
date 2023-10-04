export MACOSX_DEPLOYMENT_TARGET=10.12

./vcpkg/vcpkg install ffmpeg[avcodec,avfilter,avformat,swresample,swscale] --triplet arm64-osx
./vcpkg/vcpkg install libass --triplet arm64-osx