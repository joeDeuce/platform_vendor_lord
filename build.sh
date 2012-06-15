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


#TOOLCHAIN_PREFIX=arm-none-eabi-
#CCOMPILER=/home/joe/android/prebuilt/linux-x86/toolchain/linaro-4.7.1/bin/arm-linux-androideabi-
###PATH=/home/joe/android/prebuilt/linux-x86/toolchain/arm-eabi-4.6.3/bin:$PATH

#CC=/home/joe/CodeSourcery/Sourcery_CodeBench_Lite_for_ARM_EABI/bin/arm-none-eabi-gcc
#echo $CCOMPILER

#make -j1 ARCH=arm CROSS_COMPILE=$CCOMPILER EXTRA_AFLAGS='-mfpu=vfpv3 -ftree-vectorize -floop-interchange -floop-strip-mine -floop-block';
#make -j1 CROSS_COMPILE=$CCOMPILER lord
#echo $CFLAGS
#CFLAGS:='-O3'
#echo $CFLAGS


make -j1 lord


#build on new linux
# make CC=gcc-4.4 CXX=g++-4.4 lord -j6
