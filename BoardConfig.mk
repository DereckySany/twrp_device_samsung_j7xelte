# Bootloader
TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := universal7870

# Platform
TARGET_BOARD_PLATFORM := exynos5
TARGET_BOARD_SOC := exynos7870
TARGET_BOARD_PLATFORM_GPU := mali-t830mp

# Architecture

# 64bit
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := cortex-a53

# 32bit
# TARGET_ARCH := arm
# TARGET_ARCH_VARIANT := armv7-a-neon
# TARGET_CPU_ABI := armeabi-v7a
# TARGET_CPU_ABI2 := armeabi
# TARGET_CPU_VARIANT := cortex-a53

# Needed for both
TARGET_CPU_CORTEX_A53 := true
TARGET_CPU_SMP := true

# Kernel
# Kernel is 64bit
TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_HEADER_ARCH := arm64

# Prebuilts
TARGET_PREBUILT_KERNEL := device/samsung/j7xelte/prebuilt/Image
TARGET_PREBUILT_DTB := device/samsung/j7xelte/prebuilt/dt.img

# Boot image
BOARD_CUSTOM_BOOTIMG_MK :=  device/samsung/j7xelte/bootimg.mk
BOARD_KERNEL_IMAGE_NAME := Image
BOARD_KERNEL_SEPARATED_DT := true
BOARD_KERNEL_CMDLINE :=
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x01000000 --tags_offset 0x00000100 --board SRPOL10A000RU

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE     := 33554432
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 39845888
BOARD_SYSTEMIMAGE_PARTITION_SIZE   := 3072000000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 11784192000
BOARD_CACHEIMAGE_PARTITION_SIZE    := 209715200
BOARD_FLASH_BLOCK_SIZE := 4096

# File System
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true


# TWRP specific build flags
TW_THEME := portrait_hdpi
RECOVERY_SDCARD_ON_DATA := true
TARGET_RECOVERY_PIXEL_FORMAT := "ABGR_8888"
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/13600000.usb/13600000.dwc3/gadget/lun%d/file"
TW_BRIGHTNESS_PATH := "/sys/devices/14800000.dsim/backlight/panel/brightness"
TW_MAX_BRIGHTNESS := 255
TW_DEFAULT_BRIGHTNESS := 162
TW_NO_REBOOT_BOOTLOADER := true
TW_HAS_DOWNLOAD_MODE := true
TW_INCLUDE_NTFS_3G := true
LZMA_RAMDISK_TARGETS := recovery
TW_USE_NEW_MINADBD := true
TW_EXTRA_LANGUAGES := true
TW_MTP_DEVICE := "/dev/mtp_usb"

# Encryption support
TW_INCLUDE_CRYPTO := true
