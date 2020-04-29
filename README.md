vivo y67(PD1612) --for Cosmic-OS n-mr2
==============

### [vendor](https://github.com/BabQ/android_vendor_vivo_y67)

### 规格信息

类型     | 细节
-------:|:---------------------------------------------
CPU     | 2.0GHz Octa-Core MT6750
GPU     | Mali-T860
内置储存  | 4GB RAM
官方版本 | 6.0
内部储存 | 32GB
电池 | 3000 mAh
屏幕 | 5.5" 1280 x 720 px DPI 320
前置相机 | 16MP (OV13853),Dual LED Flash, Laser autofocus
后置相机 | 13MP (S5K3P3SX), Dual LED Flash, Laser autofocus
---------------------------------------------------------

# 构建信息

### 工作:
 * Wi-Fi
 * GPS
 * Audio
 * Sensors
 * Bluetooth
 * Micro SD
 * MTP
 * Display
 * Thermal
 * Flashlight
 * OMX
 * RIL(GSM)
 * Goodix fingerprint

### 不工作:
 * Camera
 * RIL(CDMA)
 * Tee(mcDeviceDaemon)

# 致谢
## [rote66](https://github.com/rote66)
## [ReallySnow](https://github.com/ReallySnow)
## [graineeg](https://github.com/graineeg)
## [DeckerSU](https://github.com/DeckerSU)

# 构建方法
源码同步:

    repo init -u https://github.com/Cosmic-OS/platform_manifest.git -b n-mr2

    repo sync --no-tags --no-clone-bundle --force-sync -j8

下载设备树:

    mkdir -p device/vivo && cd device/vivo && git clone https://github.com/BabQ/android_device_vivo_y67.git && mv android_device_vivo_y67 y67 && cd ../.. && mkdir -p vendor/vivo && cd vendor/vivo && git clone https://github.com/BabQ/android_vendor_vivo_y67.git && mv android_vendor_vivo_y67 y67 && cd ../..

开始编译:

    source build/envsetup.sh && lunch cos_y67-userdebug && make bacon -j4
