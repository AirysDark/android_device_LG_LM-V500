$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Get non-open-source specific aspects
$(call inherit-product-if-exists, vendor/lge/flashlmdd/flashlmdd-vendor.mk)

DEVICE_PATH := device/lge/flashlmdd
DEVICE_NAME := flashlmdd

# Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# common flash
$(call inherit-product, device/lge/flash-common/flash.mk
