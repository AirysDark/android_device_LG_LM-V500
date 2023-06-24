
# Inherit from OEM SOC-common
$(call inherit-product, $(COMMON_PATH)/common.mk)

# Copy modules for depmod
PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*.ko,$(DEVICE_PATH)/prebuilt,$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib/modules/1.1)

# Custom ROM asserts
TARGET_OTA_ASSERT_DEVICE := lge/flashlmdd
