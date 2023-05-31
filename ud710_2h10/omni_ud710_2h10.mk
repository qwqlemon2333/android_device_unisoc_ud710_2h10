#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from ud710_2h10 device
$(call inherit-product, device/sprd/ud710_2h10/device.mk)

PRODUCT_DEVICE := ud710_2h10
PRODUCT_NAME := omni_ud710_2h10
PRODUCT_BRAND := SPRD
PRODUCT_MODEL := ud710_2h10_native
PRODUCT_MANUFACTURER := sprd

PRODUCT_GMS_CLIENTID_BASE := android-sprd

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="ud710_2h10_native_noorca-user 9 PPR1.180610.011 44101 release-keys"

BUILD_FINGERPRINT := SPRD/ud710_2h10_native_noorca/ud710_2h10:9/PPR1.180610.011/10310118:user/release-keys
