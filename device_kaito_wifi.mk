$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
#$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/bq/kaito_wifi/kaito_wifi-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/bq/kaito_wifi/overlay

LOCAL_PATH := device/bq/kaito_wifi
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

$(call inherit-product, build/target/product/full.mk)

PRODUCT_NAME := full_kaito_wifi
PRODUCT_DEVICE := kaito_wifi

PRODUCT_COPY_FILES += \
		$(LOCAL_PATH)/rootdir/root/init.kaito_wifi.rc:root/init.kaito_wifi.rc \
		$(LOCAL_PATH)/rootdir/root/init.protect.rc:root/init.protect.rc \
		$(LOCAL_PATH)/rootdir/root/init.modem.rc:root/init.modem.rc \
		$(LOCAL_PATH)/rootdir/root/factory_init.rc:root/factory_init.rc \
		$(LOCAL_PATH)/rootdir/root/fstab.kaito_wifi:root/fstab.kaito_wifi \
		$(LOCAL_PATH)/rootdir/root/ueventd.kaito_wifi.rc:root/ueventd.waito_wifi.rc \
		$(LOCAL_PATH)/rootdir/root/init.kaito_wifi.usb.rc:root/init.kaito_wifi.usb.rc

#PhilZ Touch
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/twrp.fstab:recovery/root/etc/twrp.fstab

