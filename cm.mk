## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := kaito

# Inherit some common CM stuff.
#$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/bq/kaito/device_kaito.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := kaito
PRODUCT_NAME := cm_kaito
PRODUCT_BRAND := bq
PRODUCT_MODEL := kaito
PRODUCT_MANUFACTURER := bq
