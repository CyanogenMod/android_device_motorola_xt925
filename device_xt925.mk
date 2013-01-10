$(call inherit-product, device/motorola/vanquish-common/device.mk)

LOCAL_PATH := device/motorola/xt925

PRODUCT_LOCALES := en_US
PRODUCT_LOCALES += xhdpi
PRODUCT_AAPT_CONFIG := normal hdpi xhdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi

#telephony
PRODUCT_PROPERTY_OVERRIDES += \
	telephony.lteOnGsmDevice=1 \
	ro.telephony.ril.v3=signalstrength

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/config/gps.conf:system/etc/gps.conf \

#safestrap support
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/kernelmodules/prima_wlan.ko:system/lib/modules/prima/prima_wlan.ko

$(call inherit-product-if-exists, vendor/motorola/xt925/xt925-vendor.mk)
