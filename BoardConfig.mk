-include device/motorola/msm8960-common/BoardConfigCommon.mk

# inherit from the proprietary version
-include vendor/motorola/xt925/BoardConfigVendor.mk

LOCAL_PATH := device/motorola/xt925

# Use common resources
TARGET_USES_MOTOROLA_MSM8960_COMMON_LIBLIGHT := true

# NFC
BOARD_HAVE_NFC := true

# Inline kernel building
TARGET_KERNEL_VARIANT_CONFIG := msm8960_mmi_gsm_defconfig

#bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(LOCAL_PATH)/bluetooth

#TWRP
DEVICE_RESOLUTION := 720x1280
