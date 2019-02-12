LOCAL_PATH := device/samsung/j7xelte

# Release name
PRODUCT_RELEASE_NAME := j7xelte

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

PRODUCT_COPY_FILES += \
     $(LOCAL_PATH)/kernel:kernel \
     $(LOCAL_PATH)/dt.img:dt.img \
     $(LOCAL_PATH)/boot.img:boot.img \

PRODUCT_PACKAGES += \
	charger_res_images \
	charger

## Device identifier. This must come after all inclusions
PRODUCT_NAME := omni_j7xelte
PRODUCT_DEVICE := j7xelte
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
