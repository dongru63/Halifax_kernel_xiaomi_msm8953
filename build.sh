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
echo ":::     :::       :::       :::        ::: ::::::::::       :::       :::     :::  ";
echo "+:+     :+:      :+:+:      :+:        :+: :+:             :+:+:       :+:   :+:   ";
echo "+:+     +:+     +:+ +:+     +:+        +:+ +:+            +:+ +:+       +:+ +:+    ";
echo "+#++:+:++#+    +#+:+:+#+    +#+        +#+ +#++:++#+:    +#+:+:+#+        +#+      ";
echo "+#+     +#+   +#+     +#+   +#+        +#+ +#+          +#+     +#+     +#+ +#+    ";
echo "#+#     #+#  #+#       #+#  #+#        #+# #+#         #+#       #+#   #+#   #+#   ";
echo "###     ### #+#         #+# ########## ### ###        #+#         #+# ###     ###  ";
echo "                                                                   ";
echo ":::    :::    ::::::::::    :::::::::     ::::    :::    ::::::::::    :::         ";
echo ":+:   :+:     :+:           :+:    :+:    :+:+:   :+:    :+:           :+:         ";
echo "+:+  +:+      +:+           +:+    +:+    :+:+:+  +:+    +:+           +:+         ";
echo "+#++:++       +#++:++#      +#++:++#:     +#+ +:+ +#+    +#++:++#      +#+         ";
echo "+#+  +#+      +#+           +#+    +#+    +#+  +#+#+#    +#+           +#+         ";
echo "#+#   #+#     #+#           #+#    #+#    #+#   #+#+#    #+#           #+#         ";
echo "###    ###    ##########    ###    ###    ###    ####    ##########    ##########  ";
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
git clone https://github.com/laityts/arm-linux-gnueabi-8.x ~/Toolchain/arm-linux-gnueabi-8.x
git clone https://github.com/LineageOS/android_prebuilts_gcc_linux-x86_aarch64_aarch64-linux-android-4.9 ~/Toolchain/aarch64-linux-android-4.9
echo " ";
echo " ";
##########################################
export ARCH=arm64
export CROSS_COMPILE_ARM32=${HOME}/Toolchain/arm-linux-gnueabi-8.x/bin/arm-linux-gnueabi-
export CROSS_COMPILE=${HOME}/Toolchain/aarch64-linux-android-4.9/bin/aarch64-linux-android-
##########################################
echo " Creating directories ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
mkdir outputdTiffany-4.9-Custom

mkdir ~/Halifax_Kernel

mkdir ~/Halifax_Kernel/Halifax_Kernel_V$KV-Tiffany
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
make -C $(pwd) O=outputdTiffany-4.9-Custom lineage_tiffany_defconfig
make -j12 -C $(pwd) O=outputdTiffany-4.9-Custom
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

cp -r template/. ~/Halifax_Kernel/Halifax_Kernel_V$KV-Tiffany

cp outputdTiffany-4.9-Custom/arch/arm64/boot/Image.gz ~/Halifax_Kernel/Halifax_Kernel_V$KV-Tiffany/kernel/Image.gz
cp outputdTiffany-4.9-Custom/arch/arm64/boot/dts/qcom/msm8953-qrd-sku3-tiffany.dtb ~/Halifax_Kernel/Halifax_Kernel_V$KV-Tiffany/dtbs/msm8953-qrd-sku3-tiffany.dtb

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
cd ~/Halifax_Kernel/Halifax_Kernel_V$KV-Tiffany
zip -r9 Halifax_Kernel_V$KV-Tiffany.zip * -x Halifax_Kernel_V$KV-Tiffany.zip

echo " uploading to Mega "; 

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
echo ":::     :::       :::       :::        ::: ::::::::::       :::       :::     :::  ";
echo "+:+     :+:      :+:+:      :+:        :+: :+:             :+:+:       :+:   :+:   ";
echo "+:+     +:+     +:+ +:+     +:+        +:+ +:+            +:+ +:+       +:+ +:+    ";
echo "+#++:+:++#+    +#+:+:+#+    +#+        +#+ +#++:++#+:    +#+:+:+#+        +#+      ";
echo "+#+     +#+   +#+     +#+   +#+        +#+ +#+          +#+     +#+     +#+ +#+    ";
echo "#+#     #+#  #+#       #+#  #+#        #+# #+#         #+#       #+#   #+#   #+#   ";
echo "###     ### #+#         #+# ########## ### ###        #+#         #+# ###     ###  ";
echo "                                                                   ";
echo ":::    :::    ::::::::::    :::::::::     ::::    :::    ::::::::::    :::         ";
echo ":+:   :+:     :+:           :+:    :+:    :+:+:   :+:    :+:           :+:         ";
echo "+:+  +:+      +:+           +:+    +:+    :+:+:+  +:+    +:+           +:+         ";
echo "+#++:++       +#++:++#      +#++:++#:     +#+ +:+ +#+    +#++:++#      +#+         ";
echo "+#+  +#+      +#+           +#+    +#+    +#+  +#+#+#    +#+           +#+         ";
echo "#+#   #+#     #+#           #+#    #+#    #+#   #+#+#    #+#           #+#         ";
echo "###    ###    ##########    ###    ###    ###    ####    ##########    ##########  ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " ";
echo " Compiling and uploading is done !! ";
