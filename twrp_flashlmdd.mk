# Inherit from those products. Most specific first.
$(call inherit-product-if-exists, $(SRC_TARGET_DIR)/product/embedded.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

PRODUCT_COPY_FILES += device/lge/flashlmdd/prebuilt/zImage:kernel
$(call inherit-product, vendor/omni/config/common.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/embedded.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)


# Inherit from device
$(call inherit-product, device/LGE/flashlmdd/device.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)
$(call inherit-product, vendor/omni/config/gsm.mk)

PRODUCT_BUILD_PROP_OVERRIDES += \

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
persist.sys.usb.config=mtp

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := flashlmdd
PRODUCT_NAME := omni_flashlmdd
PRODUCT_BRAND := lge
PRODUCT_MODEL := LM-V500
PRODUCT_MANUFACTURER := LGE
PRODUCT_RELEASE_NAME := V50 ThinQ


BUILD_FINGERPRINT := "lge/flashlmdd_lao_com/flashlmdd:11/RKQ1.210420.001/2122112261c44:user/release-keys
