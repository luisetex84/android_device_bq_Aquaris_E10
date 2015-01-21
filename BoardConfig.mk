USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/bq/kait_wifi/BoardConfigVendor.mk

TARGET_ARCH := arm
#TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := MT8151
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a7
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true

TARGET_BOOTLOADER_BOARD_NAME := Aquaris_E10

BOARD_KERNEL_CMDLINE := 
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_PAGESIZE := 2048

BOARD_BOOTIMAGE_PARTITION_SIZE := 0x1400000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x1400000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x4c800000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x49c00000
BOARD_FLASH_BLOCK_SIZE := 0x20000

# Try to build the kernel
#TARGET_KERNEL_CONFIG := cyanogenmod_Aquaris_E10_defconfig
# Keep this as a fallback
TARGET_PREBUILT_KERNEL := device/bq/kaito_wifi/kernel

BOARD_HAS_NO_SELECT_BUTTON := true

#TWRP build flags
BOARD_HAS_LARGE_FILESYSTEM := true
RECOVERY_GRAPHICS_USE_LINELENGTH := true
DEVICE_RESOLUTION := 1920x1200
RECOVERY_SDCARD_ON_DATA := true
BRIGHTNESS_SYS_FILE := "/sys/devices/platform/leds-mt65xx/leds/lcd-backlight"
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/virtual/android_usb/android0/f_mass_storage/lun%d/file"
BOARD_CUSTOM_BOOTIMG_MK := device/bq/Aquaris_E10/boot.mk
