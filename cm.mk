## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := kaito_wifi

# Inherit some common CM stuff.
#$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/bq/kaito_wifi/device_kaito_wifi.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := kaito_wifi
PRODUCT_NAME := cm_kaito_wifi
PRODUCT_BRAND := bq
PRODUCT_MODEL := kaito_wifi
PRODUCT_MANUFACTURER := bq
