LOCAL_PATH := $(call my-dir)

########################

# libwvm
include $(CLEAR_VARS)
LOCAL_SRC_FILES = wvm.cpp
LOCAL_SHARED_LIBRARIES :=
LOCAL_MODULE := libshim_wvm
LOCAL_MODULE_TAGS := optional
include $(BUILD_SHARED_LIBRARY)

# libshim_ui
include $(CLEAR_VARS)
LOCAL_SRC_FILES := GraphicBuffer.cpp
LOCAL_SHARED_LIBRARIES := libui libutils
LOCAL_MODULE := libshim_ui
LOCAL_CFLAGS := -Wno-unused-variable -Wno-unused-parameter
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_SHARED_LIBRARY)

# libshim_icu
include $(CLEAR_VARS)
LOCAL_SRC_FILES := icu55.c
LOCAL_SHARED_LIBRARIES := libicuuc libicui18n libcrypto
LOCAL_MODULE := libshim_icu
LOCAL_CFLAGS := -Wno-unused-variable -Wno-unused-parameter
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_SHARED_LIBRARY)
#########
