rm -rf sdk/emulator
rm -rf external/qem*
rm out/target/product/ace/system/build.prop

export USE_CCACHE=1
export CCACHE_DIR=/$HOME/.ccache
prebuilt/linux-x86/ccache/ccache -M 40G
source build/envsetup.sh
lunch htc_ace-userdebug
export USE_CCACHE=1
export CCACHE_DIR=/$HOME/.ccache
prebuilt/linux-x86/ccache/ccache -M 40G


make -j1 lord

#build on new linux
# make CC=gcc-4.4 CXX=g++-4.4 lord -j6
