#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/samsung/a23xq

# Inherit Common Device Tree
$(call inherit-product, device/samsung/sm6375-common/common.mk)

# API
PRODUCT_SHIPPING_API_LEVEL := 31

# AAPT
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi
PRODUCT_AAPT_PREBUILT_DPI := xxhdpi xhdpi hdpi

# Display
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

# NFC
PRODUCT_PACKAGES += \
    android.hardware.nfc@1.2.vendor \
    com.android.nfc_extras \
    libchrome \
    libchrome.vendor \
    Tag

PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/configs/nfc/nfc/st21nfc_conf.txt:$(TARGET_COPY_OUT_VENDOR)/etc/nfc/st21nfc_conf.txt \
    $(DEVICE_PATH)/configs/nfc/libnfc-hal-st.conf:$(TARGET_COPY_OUT_VENDOR)/etc/libnfc-hal-st.conf \
    $(DEVICE_PATH)/configs/nfc/libnfc-mtp-SN100.conf:$(TARGET_COPY_OUT_VENDOR)/etc/libnfc-mtp-SN100.conf \
    $(DEVICE_PATH)/configs/nfc/libnfc-mtp-SN100_38_4MHZ.conf:$(TARGET_COPY_OUT_VENDOR)/etc/libnfc-mtp-SN100_38_4MHZ.conf \
    $(DEVICE_PATH)/configs/nfc/libnfc-qrd-SN100.conf:$(TARGET_COPY_OUT_VENDOR)/etc/libnfc-qrd-SN100.conf \
    $(DEVICE_PATH)/configs/nfc/libnfc-qrd-SN100_38_4MHZ.conf:$(TARGET_COPY_OUT_VENDOR)/etc/libnfc-qrd-SN100_38_4MHZ.conf

# Overlays
PRODUCT_PACKAGES += \
    FrameworksResA23XQ \
    SettingsProviderResA23XQ

# Ramdisk
PRODUCT_PACKAGES += \
    init.a23xq.rc

# Soong Namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(DEVICE_PATH)

# Touchscreen
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/configs/touchscreen/TSP1_SPEC_15.txt:$(TARGET_COPY_OUT_VENDOR)/etc/TSP1_SPEC_15.txt \
    $(DEVICE_PATH)/configs/touchscreen/TSP1_SPEC_PRE.txt:$(TARGET_COPY_OUT_VENDOR)/etc/TSP1_SPEC_PRE.txt

# Get non-open-source specific aspects
$(call inherit-product, vendor/samsung/a23xq/a23xq-vendor.mk)
