LOCAL_PATH := device/samsung/j7xelte

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else

PRODUCT_COPY_FILES += \
     $(LOCAL_PATH)/dt.img:dt.img

# Set those variables here to overwrite the inherited values.
PRODUCT_NAME := full_j7xelte
PRODUCT_DEVICE := j7xelte
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
PRODUCT_MODEL := SM-J710F
