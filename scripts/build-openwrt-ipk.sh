#!/bin/bash

TARGET=$1
REPO_URL="https://downloads.openwrt.org/releases/23.05.3/targets"
SDK_NAME=""

case $TARGET in
  arm_cortex-a7) SDK_NAME="arm_armv7";;
  arm_cortex-a9) SDK_NAME="arm_armv7";;
  arm_cortex-a53) SDK_NAME="arm_armv8";;
  arm_cortex-a15_neon-vfpv4) SDK_NAME="arm_armv7";;
  aarch64_generic) SDK_NAME="aarch64_generic";;
  x86_64) SDK_NAME="x86_64";;
  x86_geode) SDK_NAME="x86_geode";;
  riscv64_generic) SDK_NAME="riscv64_generic";;
  powerpc_8540) SDK_NAME="mpc85xx";;
  octeon) SDK_NAME="octeon";;
  arc) SDK_NAME="arc";;
  *) echo "Unsupported target"; exit 1;;
esac

FULL_SDK_URL=$(wget -qO- $REPO_URL/$SDK_NAME/ | grep -oE 'openwrt-sdk-.*?\.tar\.xz' | head -n1)
wget $REPO_URL/$SDK_NAME/$FULL_SDK_URL
tar -xf $FULL_SDK_URL
SDK_DIR=$(find . -maxdepth 1 -type d -name "openwrt-sdk-*")

cd $SDK_DIR
./scripts/feeds update -a
./scripts/feeds install -a

cp -r ../luci-app-easyclashtool package/
make defconfig
make package/luci-app-easyclashtool/compile V=s