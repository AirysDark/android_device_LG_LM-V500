LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE), flashlmdd)
LOCAL_PATH := device/lge/flashlmdd
include $(call all-subdir-makefiles,$(LOCAL_PATH))
endif
