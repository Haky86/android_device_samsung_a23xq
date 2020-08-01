#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/samsung/a23xq

# Android Verified Boot
BOARD_AVB_ENABLE := true
BOARD_AVB_MAKE_VBMETA_IMAGE_ARGS += --set_verification_disabled_flag

BOARD_AVB_RECOVERY_ALGORITHM := SHA256_RSA4096
BOARD_AVB_RECOVERY_KEY_PATH := external/avb/test/data/testkey_rsa4096.pem
BOARD_AVB_RECOVERY_ROLLBACK_INDEX := $(PLATFORM_SECURITY_PATCH_TIMESTAMP)
BOARD_AVB_RECOVERY_ROLLBACK_INDEX_LOCATION := 1

BOARD_AVB_VBMETA_SYSTEM := product system system_ext
BOARD_AVB_VBMETA_SYSTEM_ALGORITHM := SHA256_RSA2048
BOARD_AVB_VBMETA_SYSTEM_KEY_PATH := external/avb/test/data/testkey_rsa2048.pem
BOARD_AVB_VBMETA_SYSTEM_ROLLBACK_INDEX := $(PLATFORM_SECURITY_PATCH_TIMESTAMP)
BOARD_AVB_VBMETA_SYSTEM_ROLLBACK_INDEX_LOCATION := 2

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-2a-dotprod
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_VARIANT := cortex-a55

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-2a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a55

# Assert
TARGET_OTA_ASSERT_DEVICE := a23xq

# Board
TARGET_BOARD_INFO_FILE := $(DEVICE_PATH)/board-info.txt
TARGET_BOARD_NAME := SRPVC22C016

# Bootanimation
TARGET_BOOTANIMATION_HALF_RES := true

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := holi
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true
TARGET_NO_RPC := true

# Dexpreopt
BOARD_USES_SYSTEM_OTHER_ODEX := true

# Display
TARGET_GRALLOC_HANDLE_HAS_RESERVED_SIZE := true
TARGET_SCREEN_DENSITY := 450

# DRM
TARGET_ENABLE_MEDIADRM_64 := true

# FSConfig
TARGET_FS_CONFIG_GEN := $(DEVICE_PATH)/config.fs

# HIDL
DEVICE_FRAMEWORK_COMPATIBILITY_MATRIX_FILE += \
    hardware/qcom-caf/common/vendor_framework_compatibility_matrix.xml \
    hardware/samsung/vintf/samsung_framework_compatibility_matrix.xml

DEVICE_MANIFEST_FILE := \
    $(DEVICE_PATH)/hidl/manifest.xml
    
DEVICE_MATRIX_FILE := \
    hardware/qcom-caf/common/compatibility_matrix.xml

# Kernel
BOARD_BOOT_HEADER_VERSION := 3
BOARD_INCLUDE_DTB_IN_BOOTIMG := true
BOARD_KERNEL_BASE := 0x00000000

BOARD_KERNEL_CMDLINE := \
    androidboot.hardware=qcom \
    androidboot.memcg=1 \
    androidboot.selinux=permissive \
    androidboot.usbcontroller=4e00000.dwc3 \
    cgroup.memory=nokmem,nosocket \
    console=NULL \
    firmware_class.path=/vendor/firmware_mnt/image \
    ip6table_raw.raw_before_defrag=1 \
    iptable_raw.raw_before_defrag=1 \
    loop.max_part=7 \
    lpm_levels.sleep_disabled=1 \
    msm_rtb.filter=0x237 \
    pcie_ports=compat \
    service_locator.enable=1 \
    swiotlb=0

BOARD_KERNEL_IMAGE_NAME := Image
BOARD_KERNEL_PAGESIZE := 4096
BOARD_KERNEL_SEPARATED_DTBO := true

BOARD_MKBOOTIMG_ARGS := --header_version $(BOARD_BOOT_HEADER_VERSION)

TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_CLANG_COMPILE := true
TARGET_KERNEL_CONFIG := vendor/a23xq_defconfig
TARGET_KERNEL_SOURCE := kernel/samsung/sm6375
TARGET_KERNEL_VERSION := 5.4

# Kernel Modules
BOARD_VENDOR_KERNEL_MODULES_LOAD := \
    adsp_loader_dlkm.ko \
    apr_dlkm.ko \
    blk-sec-stats.ko \
    bolero_cdc_dlkm.ko \
    bt_fm_slim.ko \
    btpower.ko \
    camera.ko \
    dropdump.ko \
    fingerprint.ko \
    fingerprint_sysfs.ko \
    lxs_ts.ko \
    machine_dlkm.ko \
    mbhc_dlkm.ko \
    native_dlkm.ko \
    nfc_stm_sec.ko \
    novatek_ts_nt36523.ko \
    ovt_td4150_spi.ko \
    pinctrl_lpi_dlkm.ko \
    platform_dlkm.ko \
    q6_dlkm.ko \
    q6_notifier_dlkm.ko \
    q6_pdr_dlkm.ko \
    qca_cld3_wlan.ko \
    rdbg.ko \
    rmnet_core.ko \
    rmnet_ctl.ko \
    rmnet_offload.ko \
    rmnet_shs.ko \
    rx_macro_dlkm.ko \
    sec_audio_sysfs.ko \
    sec_cmd.ko \
    sec_common_fn.ko \
    sec_secure_touch.ko \
    sec_tsp_dumpkey.ko \
    sec_tsp_log.ko \
    snd_event_dlkm.ko \
    ssg-iosched.ko \
    stub_dlkm.ko \
    swr_ctrl_dlkm.ko \
    swr_dlkm.ko \
    tas256x_dlkm.ko \
    tcp_htcp.ko \
    tcp_westwood.ko \
    tx_macro_dlkm.ko \
    va_macro_dlkm.ko \
    wcd9xxx_dlkm.ko \
    wcd937x_dlkm.ko \
    wcd937x_slave_dlkm.ko \
    wcd_core_dlkm.ko

TARGET_MODULE_ALIASES += wlan.ko:qca_cld3_wlan.ko
