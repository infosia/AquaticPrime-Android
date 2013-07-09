LOCAL_PATH := $(call my-dir)

#
# OpenSSL
#
include $(CLEAR_VARS)
include $(LOCAL_PATH)/openssl/Android.mk

#
# AquaticPrime
#
include $(CLEAR_VARS)
include $(LOCAL_PATH)/tinyxml/Android.mk
include $(LOCAL_PATH)/b64/Android.mk
include $(LOCAL_PATH)/AquaticPrime/Android.mk

LOCAL_MODULE    := aquaprime
LOCAL_SRC_FILES := aquaprime.cpp $(AQUAPRIME_SRC_FILES) $(LIBTIXML_SRC_FILES) $(LIBB64_SRC_FILES)

APP_OPTIM       := debug
LOCAL_ARM_MODE  := arm
LOCAL_LDLIBS    := -llog -landroid -lz
LOCAL_SHARED_LIBRARIES += libcrypto

include $(BUILD_SHARED_LIBRARY)
