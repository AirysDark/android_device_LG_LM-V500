LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE), REL)
LOCAL_PATH := device/LGE/REL
include $(call all-subdir-makefiles,$(LOCAL_PATH))
endif