USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/bq/Aquaris_E10/BoardConfigVendor.mk

TARGET_ARCH := arm
TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := MT8151
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a7
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true

TARGET_BOOTLOADER_BOARD_NAME := Aquaris_E10

BOARD_KERNEL_CMDLINE := console=ttyMT0,921600n1 vmalloc=496M slub_max_order=0 lcm=0-nt71397_fhd_dsi_vdo_truly fps=5558 bootprof.pl_t=4212 bootprof.lk_t=1734 printk.disable_uart=1 boot_reason=4 androidboot.serialno=VC002523 lcm=0-nt71397_fhd_dsi_vdo_truly fps=5558 bootprof.pl_t=4212 bootprof.lk_t=1734 printk.disable_uart=1 boot_reason=4 androidboot.serialno=VC002523
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_PAGESIZE := 2048

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x1400000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x1400000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x4c800000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x49c00000
BOARD_FLASH_BLOCK_SIZE := 0x20000

# Try to build the kernel
#TARGET_KERNEL_CONFIG := cyanogenmod_Aquaris_E10_defconfig
# Keep this as a fallback
TARGET_PREBUILT_KERNEL := device/bq/Aquaris_E10/kernel

BOARD_HAS_NO_SELECT_BUTTON := true

#PhilZ Touch build flags for MTK
TARGET_COMMON_NAME := bq Aquaris_E10
BOARD_USE_MTK_LAYOUT := true
BOARD_MTK_BOOT_LABEL := "/bootimg"
BOARD_USE_NTFS_3G := false
#/sys/devices/platform/leds-mt65xx/leds/lcd-backlight
BRIGHTNESS_SYS_FILE := "/sys/class/leds/lcd-backlight/brightness"
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/virtual/android_usb/android0/f_mass_storage/lun%d/file"
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1200
#BATTERY_LEVEL_PATH := true
BOARD_CUSTOM_BOOTIMG_MK := device/bq/Aquaris_E10/boot.mk
