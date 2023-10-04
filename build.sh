export CXXFLAGS=-I$(pwd)/vcpkg/installed/arm64-osx/include
export CFLAGS=-I$(pwd)/vcpkg/installed/arm64-osx/include
export LDFLAGS=-L$(pwd)/vcpkg/installed/arm64-osx/lib
export PKG_CONFIG_PATH=$(pwd)/vcpkg/installed/arm64-osx/lib/pkgconfig:$(pwd)/vcpkg/installed/arm64-osx/share/pkgconfig:$PKG_CONFIG_PATH
export MACOSX_DEPLOYMENT_TARGET=10.12

rm -rf build && meson setup build --prefix=/
meson compile -C build

export DESTDIR=/Users/bytedance/Documents/Projects/Luna-PC/addons/player/darwin/arm64
meson install -C build

install_name_tool -id "@rpath/libmpv.dylib" $DESTDIR/lib/libmpv.dylib