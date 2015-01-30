USE_CAMERA_STUB := true

# inherit from the proprietary version
#-include vendor/bq/kaito_wifi/BoardConfigVendor.mk

TARGET_ARCH := arm
TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := mt8392
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a7
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true

#TARGET_BOOTLOADER_BOARD_NAME := Aquaris_E10

BOARD_BOOTIMAGE_PARTITION_SIZE := 0x1400000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x1400000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x4c800000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x49c00000
BOARD_FLASH_BLOCK_SIZE := 0x20000

# Try to build the kernel
#TARGET_KERNEL_CONFIG := cyanogenmod_kaito_wifi_defconfig
# Keep this as a fallback
TARGET_PREBUILT_KERNEL := device/bq/kaito_wifi/kernel
BOARD_KERNEL_CMDLINE :=
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_CUSTOM_BOOTIMG_MK := device/bq/kaito_wifi/boot.mk
BOARD_MKBOOTIMG_ARGS := --base 0x10000000 --pagesize 2048 --kernel_offset 0x00008000 --ramdisk_offset 0x01000000 --second_offset 0x00f00000 --tags_offset 0x00000100 --board 7f0af25

BOARD_HAS_NO_SELECT_BUTTON := true

#TWRP build flags
BOARD_HAS_LARGE_FILESYSTEM := true
RECOVERY_GRAPHICS_USE_LINELENGTH := true
DEVICE_RESOLUTION := 1920x1200
RECOVERY_SDCARD_ON_DATA := true
TW_NO_CPU_TEMP := true
TW_BRIGHTNESS_PATH := /sys/class/leds/lcd-backlight/brightness
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/platform/mt_usb/musb-hdrc.0/gadget/lun0/file"
