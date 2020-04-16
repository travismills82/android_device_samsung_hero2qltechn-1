# Release name
PRODUCT_RELEASE_NAME := hero2qltechn

$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Another common config inclusion
$(call inherit-product, $(SRC_TARGET_DIR)/product/embedded.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/pb/config/common.mk)

PRODUCT_PACKAGES += \
	charger_res_images \
	charger

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := hero2qltechn
PRODUCT_MODEL := SM-G9350
PRODUCT_NAME := omni_hero2qltechn
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung

ifeq ($(TARGET_PREBUILT_KERNEL),)
LOCAL_KERNEL := device/samsung/hero2qltechn/Image.gz
else
LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

ifeq ($(TARGET_PREBUILT_DTB),)
LOCAL_KERNEL_DTB := device/samsung/hero2qltechn/dtb.img
else
LOCAL_KERNEL_DTB := $(TARGET_PREBUILT_DTB)
endif

PRODUCT_COPY_FILES += \
	$(LOCAL_KERNEL):kernel \
	$(LOCAL_KERNEL_DTB):dt.img
