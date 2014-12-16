LOCAL_PATH := $(call my-dir)
include $(call all-subdir-makefiles,$(LOCAL_PATH))

$(call inherit-product, device/samsung/d2spr/full_d2spr.mk)

# Inherit device common stuff specific to TO
$(call inherit-product, vendor/to/device/samsung/d2-common/to.mk)

# Enhanced NFC
$(call inherit-product, vendor/to/config/nfc_enhanced.mk)

# Inherit some common to stuff.
$(call inherit-product, vendor/to/config/common_full_phone.mk)

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=d2spr \
    TARGET_DEVICE=d2spr \

PRODUCT_NAME := to_d2spr
PRODUCT_DEVICE := d2spr
