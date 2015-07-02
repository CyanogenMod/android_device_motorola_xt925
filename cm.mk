# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Enhanced NFC
$(call inherit-product, vendor/cm/config/nfc_enhanced.mk)

DEVICE_PACKAGE_OVERLAYS += device/motorola/qcom-common/overlay-cm

# Media
PRODUCT_COPY_FILES += \
    device/motorola/msm8960-common/config/media_codecs.xml:system/etc/media_codecs.xml

# Boot animation
TARGET_SCREEN_WIDTH := 720
TARGET_SCREEN_HEIGHT := 1280

PRODUCT_NAME := cm_xt925
TARGET_VENDOR_PRODUCT_NAME := XT925
TARGET_VENDOR_DEVICE_NAME := vanquish_u

$(call inherit-product, device/motorola/xt925/full_xt925.mk)

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT=motorola/XT925_rtfr/vanquish_u:4.4.2/KDA20.127/59:user/release-keys \
    PRIVATE_BUILD_DESC="XT925_rtfr-user 4.4.2 KDA20.127 59 release-keys"
