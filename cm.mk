# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Enhanced NFC
$(call inherit-product, vendor/cm/config/nfc_enhanced.mk)

DEVICE_PACKAGE_OVERLAYS += device/motorola/qcom-common/overlay-cm

# Media
PRODUCT_COPY_FILES += \
    device/motorola/msm8960-common/config/media_codecs.xml:system/etc/media_codecs.xml \
    frameworks/av/media/libstagefright/data/media_codecs_ffmpeg.xml:system/etc/media_codecs_ffmpeg.xml

# Boot animation
TARGET_SCREEN_WIDTH := 720
TARGET_SCREEN_HEIGHT := 1280

PRODUCT_NAME := cm_xt925
TARGET_VENDOR_PRODUCT_NAME := XT925
TARGET_VENDOR_DEVICE_NAME := vanquish_u

$(call inherit-product, device/motorola/xt925/full_xt925.mk)

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT=XT925_retbr/vanquish_u:4.1.2/9.8.2Q-50-XT925_VQLM-26/1380067192:user/release-keys \
    PRIVATE_BUILD_DESC="XT925_retbr-user 4.1.2 9.8.2Q-50-XT925_VQLM-26 1380067192 release-keys"
