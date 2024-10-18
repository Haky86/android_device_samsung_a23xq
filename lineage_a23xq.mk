#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from a23xq device
$(call inherit-product, device/samsung/a23xq/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_a23xq
PRODUCT_DEVICE := a23xq
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-A236
PRODUCT_MANUFACTURER := samsung

# Use the latest approved GMS identifiers
PRODUCT_GMS_CLIENTID_BASE := android-samsung

# Vendor Fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="a23xqnsxx-user 11 RP1A.200720.012 A236BXXSGEZH2 release-keys" \
    BuildFingerprint=samsung/a23xqnsxx/a23xq:11/RP1A.200720.012/A236BXXSGEZH2:user/release-keys
