$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

$(call inherit-product, device/motorola/xt925/device_xt925.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := xt925
PRODUCT_NAME := full_xt925
PRODUCT_BRAND := motorola
PRODUCT_MODEL := XT925
PRODUCT_MANUFACTURER := motorola
