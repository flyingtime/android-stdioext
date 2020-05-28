# ndk-build NDK_PROJECT_PATH=. APP_BUILD_SCRIPT=Android.mk
LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := stdioext

LOCAL_C_INCLUDES := $(LOCAL_PATH)/include

# missing stdio functions

LOCAL_SRC_FILES := $(LOCAL_PATH)/src/fmemopen.cpp \
				   $(LOCAL_PATH)/src/flags.c

LOCAL_CFLAGS += -O3

# 静态库
include $(BUILD_STATIC_LIBRARY)
# 动态库
# include $(BUILD_SHARED_LIBRARY)