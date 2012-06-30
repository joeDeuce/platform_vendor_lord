#!/bin/bash

#########################################################################
###                                                                   ###
###   Many thanks to Lord Clockan for giving a great starting place   ###
###   to build for the HTC Ace.  All things named 'lord' have been    ###
###   left to recognize the work he put in to this!                   ###
###                                                  -joeDeuce        ###
#########################################################################


# Set this to desired HDD space that CCACHE can use
# I recommend 40G, but due to my HDD size, am limited
# to 15G
CCACHE_SIZE=15G


# Set this to the number of concurrent jobs to run at once
# Generally, you should set this to the number of cores you have
CONCURRENT_JOBS=1


# this sets the desired build variant
# valid options are:
#	eng
#	userdebug
#	user
#
# eng is for development use, as it enables a lot
# 	of extra debugging code to be compiled in
#
# userdebug contains a few extra debugging items,
#	but nowhere near what eng has. this variant 
#	is useful for alphas and betas
#
# user should be used for releases only
#
VARIANT=userdebug


# dirty hack to get this to build on my 32-bit system
rm -rf sdk/emulator
rm -rf external/qem*


# let's clean this up before each build to have a valid timestamp in build.prop
rm out/target/product/ace/system/build.prop

########################################################################################
export USE_CCACHE=1
export CCACHE_DIR=/$HOME/.ccache
prebuilt/linux-x86/ccache/ccache -M $CCACHE_SIZE
source build/envsetup.sh
lunch htc_ace-$VARIANT
export USE_CCACHE=1
export CCACHE_DIR=/$HOME/.ccache
prebuilt/linux-x86/ccache/ccache -M $CCACHE_SIZE
make -j$CONCURRENT_JOBS lord
