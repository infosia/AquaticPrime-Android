include $(CLEAR_VARS)
LOCAL_MODULE	:= libcrypto
LOCAL_SRC_FILES	:= openssl/$(TARGET_ARCH_ABI)/libcrypto.so
include $(PREBUILT_SHARED_LIBRARY)
