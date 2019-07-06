#!/bin/bash
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
read -p "Write the Kernel version: " KV
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " Cleaning old build directories ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " Setting up the compiler ";
echo " ";
git clone https://github.com/LineageOS/android_prebuilts_gcc_linux-x86_aarch64_aarch64-linux-android-4.9 ~/Toolchain/64
git clone https://github.com/LineageOS/android_prebuilts_gcc_linux-x86_arm_arm-linux-androideabi-4.9 ~/Toolchain/32
echo " ";
echo " ";
##########################################
export ARCH=arm64
export CROSS_COMPILE_ARM32=${HOME}/Toolchain/32/bin/arm-linux-androideabi-
export CROSS_COMPILE=${HOME}/Toolchain/64/bin/aarch64-linux-android-
##########################################
echo " Creating directories ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
mkdir outputdTiffany-4.9-Custom

mkdir ~/Halifax_Kernel

mkdir ~/Halifax_Kernel/Halifax_Kernel_V$KV-Tiffany-4.9-Custom
echo " Started Building the Kernels ! ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";

##########################################

echo " Started Building Tiffany-4.9-Custom ! ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
make -C $(pwd) O=outputdTiffany-4.9-Custom tiffany_defconfig
make -j$(nproc) -C $(pwd) O=outputdTiffany-4.9-Custom
##########################################

echo " copying zImage and dtb and the template over to the output directory ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";

if [ -d template/kernel ]; then
    echo "kernel existed"
else
    mkdir template/kernel
fi
if [ -d template/dtb-treble ]; then
    echo "dtb-treble existed"
else
    mkdir template/dtb-treble
fi
if [ -d template/dtb-nontreble ]; then
    echo "dtb-nontreble existed"
else
    mkdir template/dtb-nontreble
fi

cp -r template/. ~/Halifax_Kernel/Halifax_Kernel_V$KV-Tiffany-4.9-Custom

cp outputdTiffany-4.9-Custom/arch/arm64/boot/Image.gz ~/Halifax_Kernel/Halifax_Kernel_V$KV-Tiffany-4.9-Custom/kernel/Image.gz
cp outputdTiffany-4.9-Custom/arch/arm64/boot/dts/qcom/msm8953-qrd-sku3-tiffany-nontreble.dtb ~/Halifax_Kernel/Halifax_Kernel_V$KV-Tiffany-4.9-Custom/dtb-nontreble
cp outputdTiffany-4.9-Custom/arch/arm64/boot/dts/qcom/msm8953-qrd-sku3-tiffany-treble.dtb ~/Halifax_Kernel/Halifax_Kernel_V$KV-Tiffany-4.9-Custom/dtb-treble

echo " Zipping Kernel Files ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";

##########################################
cd ~/Halifax_Kernel/Halifax_Kernel_V$KV-Tiffany-4.9-Custom
zip -r9 Halifax_Kernel_V$KV-Tiffany-4.9-Custom.zip * -x Halifax_Kernel_V$KV-Tiffany-4.9-Custom.zip

echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " Compiling and uploading is done !! ";
