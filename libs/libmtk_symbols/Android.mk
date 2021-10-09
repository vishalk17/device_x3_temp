LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
  MediatekHacks.cpp \
  crypto.c \
  icu55.c \
  mtk_gui.cpp \
  mtk_omx.cpp \
  mtk_ui.cpp \
  mtkaudio.cpp \
  mtkcamhack.cpp \
  ssl.c

# only for 32bit libraries
LOCAL_SRC_FILES_32 := mtk_string.cpp
# only for 64bit libraries
LOCAL_SRC_FILES_64 := mtk_parcel.cpp

LOCAL_SHARED_LIBRARIES := \
  libcutils \
  libbinder\
  libutils \
  liblog \
  libgui \
  libui \
  libicuuc \
  libicui18n \
  libcrypto \
  libstagefright_foundation \
  libssl

LOCAL_C_INCLUDES += \
  frameworks/av/media/mtp/ \
  system/core/include/ \
  frameworks/rs/server/ \
  frameworks/av/include/ \
  hardware/libhardware/include/

LOCAL_MODULE := libmtk_symbols
LOCAL_MODULE_TAGS := optional

include $(BUILD_SHARED_LIBRARY)
