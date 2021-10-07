LOCAL_PATH := $(call my-dir)

########################

include $(CLEAR_VARS)
LOCAL_SRC_FILES = wvm.cpp
LOCAL_SHARED_LIBRARIES :=
LOCAL_MODULE := libshim_wvm
LOCAL_MODULE_TAGS := optional
include $(BUILD_SHARED_LIBRARY)
#########
