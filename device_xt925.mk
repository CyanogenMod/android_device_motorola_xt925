$(call inherit-product, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

$(call inherit-product, device/motorola/msm8960-common/msm8960.mk)

LOCAL_PATH := device/motorola/xt925

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

# xt925 specific overlay
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

PRODUCT_LOCALES := en_US
PRODUCT_LOCALES += xhdpi
PRODUCT_AAPT_CONFIG := normal hdpi xhdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi

# QCOM Display
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=320

#telephony
PRODUCT_PROPERTY_OVERRIDES += \
	telephony.lteOnGsmDevice=1 \
	telephony.lteOnCdmaDevice=0 \
	ro.telephony.default_network=9 \
	persist.radio.no_wait_for_card=1 \
	persist.radio.call_type=1 \
	persist.radio.apm_sim_not_pwdn=1 \
	persist.radio.dfr_mode_set=1 \
	ro.telephony.ril.v3=signalstrength

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/config/gps.conf:system/etc/gps.conf

$(call inherit-product, device/motorola/msm8960-common/idc/idc.mk)
$(call inherit-product, device/motorola/msm8960-common/keychars/keychars.mk)
$(call inherit-product, device/motorola/msm8960-common/keylayout/keylayout.mk)
$(call inherit-product, device/motorola/msm8960-common/modules/nfc/nfc.mk)
$(call inherit-product-if-exists, vendor/motorola/xt925/xt925-vendor.mk)
