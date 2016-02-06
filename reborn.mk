# Boot animation
TARGET_SCREEN_HEIGHT := 720
TARGET_SCREEN_WIDTH := 1280

# Inherit some common Reborn stuff.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

$(call inherit-product, vendor/reborn/config/common_full_phone.mk)

$(call inherit-product, vendor/reborn/config/reborn.mk)

# Inherit device configuration
$(call inherit-product, device/asus/Z008/device.mk)

DEVICE_PACKAGE_OVERLAYS += device/asus/Z008/overlay

PRODUCT_RUNTIMES := runtime_libart_default

## Device identifier. This must come after all inclusions
PRODUCT_NAME := reborn_Z008
PRODUCT_BRAND := asus
PRODUCT_MODEL := ASUS_Z008
PRODUCT_MANUFACTURER := asus
PRODUCT_DEVICE := Z008
RELEASE_TYPE := REBORN_OFFICIAL

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=WW_Z008 \
    BUILD_FINGERPRINT=asus/WW_Z008/Z008:5.0/LRX21V/2.19.40.23_20150701_1487_user:user/release-keys \
    PRIVATE_BUILD_DESC="asusmofd_hd-user 5.0 LRX21V 2.19.40.23_20150701_1487_user release-keys"