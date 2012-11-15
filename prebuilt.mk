### copy to obj/ the prebuilts needed to build open source libraries
LOCAL_PATH := vendor/motorola/xt925

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/proprietary/lib/libacdbloader.so:obj/lib/libacdbloader.so
