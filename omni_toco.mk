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

# Inherit from toco device
$(call inherit-product, device/xiaomi/toco/device.mk)

PRODUCT_DEVICE := toco
PRODUCT_NAME := omni_toco
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Mi Note 10 Lite
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="toco-user 11 RKQ1.200826.002 V12.1.4.0.RFNMIXM release-keys"

BUILD_FINGERPRINT := Xiaomi/toco_global/toco:11/RKQ1.200826.002/V12.1.4.0.RFNMIXM:user/release-keys
