#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit some common EverestOS stuff.
$(call inherit-product, vendor/everest/config/common_full_phone.mk)

# Kernel
TARGET_KERNEL_VERSION := 4.19

# Inherit from Mi439 device
$(call inherit-product, device/xiaomi/Mi439/device.mk)

# Overlays
PRODUCT_PACKAGES += \
    xiaomi_pine_overlay_lineage \
    xiaomi_olive_overlay_lineage

DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay-lineage

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := Mi439_4_19
PRODUCT_NAME := everest_Mi439_4_19
BOARD_VENDOR := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := SDM439
PRODUCT_MANUFACTURER := Xiaomi
TARGET_VENDOR := Xiaomi

# Maintainer name for Everest

EVEREST_MAINTAINER := "AFK•FRN?"

# Adding Blur support

TARGET_SUPPORTS_BLUR := true

# For UDFPS devices

TARGET_HAS_UDFPS := true

EXTRA_UDFPS_ANIMATIONS := true
# Build Vanilla

WITH_GAPPS := false

# Build Launcher3 in GAPPS (default is Pixel Launcher)
TARGET_INCLUDE_PIXEL_LAUNCHER := false


PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="olive-user 10 QKQ1.191014.001 V12.5.1.0.QCNMIXM release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := "Xiaomi/olive/olive:10/QKQ1.191014.001/V12.5.1.0.QCNMIXM:user/release-keys"

# Gapps
WITH_GAPPS := false 
