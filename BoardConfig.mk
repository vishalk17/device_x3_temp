-include vendor/leeco/x3/BoardConfigVendor.mk

DEVICE_PATH := device/leeco/x3

TARGET_SPECIFIC_HEADER_PATH := $(DEVICE_PATH)/include
TARGET_BOARD_KERNEL_HEADERS := $(DEVICE_PATH)/kernel-headers

# CPU
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := cortex-a53
TARGET_CPU_SMP := true
TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53

# BOOTLOADER/Platform
TARGET_BOOTLOADER_BOARD_NAME := mt6795
TARGET_BOARD_PLATFORM := mt6795

# MTK Hardware
BOARD_USES_MTK_HARDWARE := true
BOARD_HAS_MTK_HARDWARE := true
MTK_HARDWARE := true

# Kernel
TARGET_USES_64_BIT_BINDER := true
TARGET_IS_64_BIT := true
BOARD_KERNEL_CMDLINE := bootopt=64S3,32N2,64N2 androidboot.selinux=permissive loop.max_part=7
BOARD_KERNEL_BASE := 0x40078000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := \
	--base 0x40078000 \
	--pagesize 2048 \
	--kernel_offset 0x00008000 \
	--ramdisk_offset 0x03f88000 \
	--second_offset 0x00e88000 \
	--tags_offset 0x0df88000 \
	--board MT6795
TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_SOURCE := kernel/leeco/x3
TARGET_KERNEL_CONFIG := x500_defconfig
BOARD_KERNEL_IMAGE_NAME := Image.gz-dtb

# make_ext4fs requires numbers in dec format
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2684354560
BOARD_CACHEIMAGE_PARTITION_SIZE := 444596224
BOARD_USERDATAIMAGE_PARTITION_SIZE := 27992260608
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 18777216
BOARD_FLASH_BLOCK_SIZE := 4096

TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# Display
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080
USE_OPENGL_RENDERER := true
BOARD_EGL_CFG := $(DEVICE_PATH)/configs/egl.cfg
BOARD_EGL_NEEDS_HANDLE_VALUE := true

# Audio
BOARD_CONNECTIVITY_VENDOR := MediaTek
BOARD_USES_MTK_AUDIO := true
LEGACY_MTK_AV_BLOB := true
SUPPRESS_MTK_AUDIO_BLOB_ERR_MSG := true
USE_XML_AUDIO_POLICY_CONF := 1

# Bluetooth
MTK_BT_SUPPORT := yes
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_MTK := true
BOARD_BLUETOOTH_DOES_NOT_USE_RFKILL := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth

# Camera
TARGET_HAS_LEGACY_CAMERA_HAL1 := true
TARGET_USES_NON_TREBLE_CAMERA := true
TARGET_NEEDS_LEGACY_CAMERA_HAL1_DYN_NATIVE_HANDLE := true
TARGET_SPECIFIC_CAMERA_PARAMETER_LIBRARY := libcamera_parameters_mtk

# Charger
BOARD_CHARGER_SHOW_PERCENTAGE := true
WITH_LINEAGE_CHARGER := false

BACKLIGHT_PATH := /sys/class/leds/lcd-backlight/brightness
BOARD_RED_LED_PATH := "/sys/class/leds/red"
BOARD_GREEN_LED_PATH := "/sys/class/leds/green"
BOARD_BLUE_LED_PATH := "/sys/class/leds/blue"

# Offline charging
BOARD_CHARGING_MODE_BOOTING_LPM := /sys/class/BOOT/BOOT/boot/boot_mode

# FS_CONFIG
TARGET_FS_CONFIG_GEN := $(DEVICE_PATH)/config.fs

# HIDL Manifest & Compatibility_matrix
DEVICE_MANIFEST_FILE := $(DEVICE_PATH)/configs/manifest.xml
DEVICE_MATRIX_FILE := $(DEVICE_PATH)/configs/compatibility_matrix.xml

# LightHAL
TARGET_PROVIDES_LIBLIGHT := true

# LineageHW
BOARD_USES_LINEAGE_HARDWARE := true
BOARD_HARDWARE_CLASS := $(DEVICE_PATH)/lineagehw
TARGET_TAP_TO_WAKE_NODE := "/sys/bus/i2c/devices/i2c-2/2-004b/wake_gesture_enable"

# RIL
SIM_COUNT := 2
BOARD_PROVIDES_RILD := true
BOARD_PROVIDES_LIBRIL := true
BOARD_CONNECTIVITY_MODULE := conn_soc
ENABLE_VENDOR_RIL_SERVICE := true

# Shims
TARGET_LD_SHIM_LIBS := \
    /system/vendor/lib/libdpframework.so|libmtk_symbols.so \
    /system/vendor/lib64/libdpframework.so|libmtk_symbols.so \
    /system/vendor/lib/hwcomposer.mt6795.so|libmtk_symbols.so \
    /system/vendor/lib64/hwcomposer.mt6795.so|libmtk_symbols.so \
    /system/vendor/lib/libBnMtkCodec.so|libmtk_symbols.so \
    /system/vendor/lib64/libBnMtkCodec.so|libmtk_symbols.so \
    /system/vendor/lib/hw/audio.primary.mt6795.so|libmtk_symbols.so|libutilscallstack.so \
    /system/vendor/lib64/hw/audio.primary.mt6795.so|libmtk_symbols.so|libutilscallstack.so \
    /system/vendor/lib/libcam_utils.so|libutilscallstack.so \
    /system/vendor/lib64/libcam_utils.so|libutilscallstack.so \
    /system/vendor/lib/libsrv_um.so|libutilscallstack.so \
    /system/vendor/lib64/libsrv_um.so|libutilscallstack.so \
    /system/vendor/bin/guiext-server|libmtk_symbols.so \
    /system/vendor/xbin/mnld|libmtk_symbols.so

# Selinux
BOARD_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy
SELINUX_IGNORE_NEVERALLOWS := true

# system.prop
TARGET_SYSTEM_PROP := $(DEVICE_PATH)/system.prop
BOARD_PROPERTY_OVERRIDES_SPLIT_ENABLED := true

# Wifi
BOARD_WLAN_DEVICE := MediaTek
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_mt66xx
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_mt66xx
WIFI_DRIVER_FW_PATH_PARAM := "/dev/wmtWifi"
WIFI_DRIVER_FW_PATH_STA := STA
WIFI_DRIVER_FW_PATH_AP := AP
WIFI_DRIVER_FW_PATH_P2P := P2P
WIFI_DRIVER_STATE_CTRL_PARAM := "/dev/wmtWifi"
WIFI_DRIVER_STATE_ON := 1
WIFI_DRIVER_STATE_OFF := 0

# Others
VENDOR_SECURITY_PATCH := 2016-11-24
BUILD_BROKEN_DUP_RULES := true
BOARD_ROOT_EXTRA_FOLDERS := \
    protect_f \
    protect_s \
    custom

# Recovery
ifeq ($(WITH_TWRP),true)
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/ramdisk/twrp.fstab
else
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/ramdisk/fstab.mt6795
endif
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/class/android_usb/android0/f_mass_storage/lun/file
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_RECOVERY_SWIPE := true
BOARD_SUPPRESS_EMMC_WIPE := true
BOARD_USE_FRAMEBUFFER_ALPHA_CHANNEL := true
RECOVERY_GRAPHICS_USE_LINELENGTH := true
RECOVERY_SDCARD_ON_DATA := true
TARGET_DISABLE_TRIPLE_BUFFERING := false
TARGET_RECOVERY_PIXEL_FORMAT := "RGBA_8888"

