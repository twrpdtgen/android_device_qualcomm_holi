LOCAL_PATH := $(call my-dir)

ifneq ($(filter holi,$(TARGET_DEVICE)),)
include $(call all-makefiles-under,$(LOCAL_PATH))
endif
