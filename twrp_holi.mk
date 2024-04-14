#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/qualcomm/holi

# Inherit from holi device
$(call inherit-product, $(DEVICE_PATH)/device.mk)

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(DEVICE_PATH)

# Release name
PRODUCT_RELEASE_NAME := holi

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := holi
PRODUCT_NAME := twrp_holi
PRODUCT_BRAND := qualcomm
PRODUCT_MODEL := holi
PRODUCT_MANUFACTURER := qualcomm
