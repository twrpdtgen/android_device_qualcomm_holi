#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/qualcomm/holi

# Inherit from common AOSP config
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)

# Configure twrp
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from holi device
$(call inherit-product, $(DEVICE_PATH)/device.mk)

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(DEVICE_PATH)

# Copy modules for depmod
PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*.ko,$(DEVICE_PATH)/prebuilt,$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib/modules)
PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*-qti,$(DEVICE_PATH)/prebuilt,$(TARGET_COPY_OUT_RECOVERY)/root/system/bin)
PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*-service,$(DEVICE_PATH)/prebuilt,$(TARGET_COPY_OUT_RECOVERY)/root/system/bin)
PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*.ko,*.b00,*.b01,*.b02,*.b03,*.b04,*.b05,*.b06,*.b07,*.mdt,$(DEVICE_PATH)/prebuilt,$(TARGET_COPY_OUT_RECOVERY)/root/vendor/firmware)

# Release name
PRODUCT_RELEASE_NAME := holi

# Assert
TARGET_OTA_ASSERT_DEVICE := holi

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := holi
PRODUCT_NAME := twrp_holi
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := CPH2467
PRODUCT_MANUFACTURER := NordCE3Lite
