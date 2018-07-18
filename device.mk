#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/samsung/a23xq

# Overlays
PRODUCT_ENFORCE_RRO_TARGETS := *

PRODUCT_PACKAGES += \
    CarrierConfigOverlayCommon \
    FrameworkResOverlayCommon \
    LineageDialerOverlayCommon \
    LineageSDKOverlayCommon \
    SettingsProviderOverlayCommon \
    SettingsLibOverlayCommon \
    SystemUIOverlayCommon \
    TelecommOverlayCommon \
    TelephonyOverlayCommon \
    WifiResourcesOverlayCommon

# Get non-open-source specific aspects
$(call inherit-product, vendor/samsung/a23xq/a23xq-vendor.mk)
